A = [0 10; 0 10]

B = [-0.55; 0.458] 

C = [1 0];

t1 = 0:0.01:3;
u1 = (pi/2)*ones(size(t1));
t2 = 3:0.01:10;
u2 = (-pi/2)*ones(size(t2));

p1 = [-7 -7];
K = acker(A,B,p1)
sys_cl = ss(A-B*K,B,C,0);

sys = ss(A,B,C,0);

[y1,t1,x] = lsim(sys_cl,u1,t1);
plot(t1,y1);
hold on;
[y2,t2,x] = lsim(sys_cl,u2,t2);
plot(t2,y2);

%title('Open-Loop Response to Non-Zero Initial Condition')