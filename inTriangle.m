function inTriangle

axis([-100 100 -100 100])
hold on

[x,y]=ginput(3);
while (x(1)==x(2)&&y(1)==y(2))||(x(1)==x(3)&&y(1)==y(3))||(x(3)==x(2)&&y(3)==y(2))
    disp('The three points can not form a triangle.')
    disp('Choose other three points.')
    [x,y]=ginput(3);
end
while ((x(3)-x(2))/(y(3)-y(2)))==((x(3)-x(1))/(y(3)-y(1)))
    disp('The three points can not form a triangle.')
    disp('Choose other three points.')
    [x,y]=ginput(3);
end
s=[x(1) x(2) x(3) x(1)];
t=[y(1) y(2) y(3) y(1)];
plot(s,t)
plot(0,0,'o')

m1=x(1)*y(2)-x(2)*y(1);
m2=x(2)*y(3)-x(3)*y(2);
m3=x(3)*y(1)-x(1)*y(3);

if m1==0 || m2==0 || m3==0
    disp('The original point is on the triangle.')
end

if m1>0
    if m2>0 && m3>0
        disp('The original point is inside the triangle.')
    else
        disp('The original point is outside the triangle.')
    end
end

if m1<0
    if m2<0 && m3<0
        disp('The original point is inside the triangle.')
    else
        disp('The original point is outside the triangle.')
    end
end
    

