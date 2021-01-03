% Movie of a freely rotating rigid body

function tumbling_block

a = [1,2,4];
omega0 = [0,1,0.1];
time = 30;
n_frames = 240;

initial_vertices = [0,0,0; a(1),0,0; a(1),a(2),0; 0,a(2),0; 0,0,a(3); a(1),0,a(3); a(1),a(2),a(3)];

    for j = 1:3
        initial_verties(:,j) = initial_vertices(:,j)-a(j)/2;
    end
    
    face_matrix = [1,2,6,5;2,3,7,6;3,4,8,7;4,1,5,8;1,2,3,4;5,6,7,8];

    y0 = [1;0;0;0;1;0;0;0;1;transpose(omega0(1:3))];

    I0 = [a(2)^2+a(3)^2,0,0;0,a(1)^2+a(3)^2,0;0,0,a(1)^2+a(2)^2];
    options = odeset('RelTol', 0.00000001);

    sol = ode45(@(t,w) odefunc(t,w,I0), [0,time], y0, options);

    close all

    count = 0;
    ax_length = 1.2*max(a)/2;
    scrsz = get(0, 'Screensize');

    figure1 = figure('Position', [scrsz(3)/2-200 scrsz(4)/2-200 400 400], 'Color', [1 1 1]);

    for i = 1:n_frames
        count = count + 1;
        t = time*(i-1)/(n_frames-1);
        y = deval(sol,t);
        R = [y(1:3),y(4:6),y(7:9)];
        new_vertices = transpose(R*transpose(initial_vertices));
        clf;

     patch('Vertices', new_vertices, 'Faces', face_matrix, 'FaceVertexCdata',hsv(6), 'FaceColor', 'flat');
            axis([-ax_length, ax_length, -ax_length, ax_length, -ax_length, ax_length])
            axis off
            pause(0.05)
    end
end

function dwdt = odefunc(t,w,IO)
    omega = [w(10:12)];
    R = [w(1:3), w(4:6), w(7:9)];
    I = R*IO*transpose(R);
    alpha = -I\(cross(omega, I*omega));
    S = [0, -omega(3), omega(2); omega(3), 0, -omega(1); -omega(2), omega(1), 0];
    
    Rdot = S*R;
    dwdt(1:9) = Rdot(1:9);
    dwdt(10:12) = alpha;
    dwdt = transpose(dwdt);
end


