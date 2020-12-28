function inPolygon(X)

axis([-100 100 -100 100])
hold on

s=[]; t=[]; m=[];
[x,y]=ginput(3);
s=x; t=y;
for ii=3:20
    [x,y,button]=ginput(1);
    if button==3
        break
    end
   s(end+1)=x;
   t(end+1)=y;
   
end
s(end+1)=s(1);
t(end+1)=t(1);
plot(s,t)
plot(X(1),X(2),'o')

s=s-X(1);
t=t-X(2);

for jj=1:ii
    m(end+1)=s(jj)*t(jj+1)-s(jj+1)*t(jj);
end

zero=1;
for aa=1:ii
    zero=zero*m(aa);
end
if aa==0
    disp('The point is on the polygon.')
end

if m(1)>0
    for kk=2:ii
        if m(kk)<0
            disp('not')
            break
        end
        if kk==ii && m(kk)>0
            disp('yes')
        end
    end
end

if m(1)<0
    for kk=2:ii
        if m(kk)>0
            disp('The point is outside the polygon.')
            break
        end
        if kk==ii && m(kk)<0
            disp('The point is inside the polygon.')
        end
    end
end



        

