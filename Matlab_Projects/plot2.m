v = 0:0.05:4*pi;
for i = 1:length(v)
    cosv = cos(v(i));
    sinv = sin(v(i));
    if (cosv > sinv)
        w(i) = cosv;
    else
        w(i) = sinv;
    end
end
figure
plot(v, w)