clc;
clear all;
close all;

%% create a figure, define its axis
figure;
axis square;
set(gca,'XLim',[0,50],'YLim',[0,50]);
%% create a rectangular object


r_1 = rectangle('Position',[20 14 7 6], 'FaceColor', 'black', 'Edgecolor','none');
r_2 = rectangle('Position',[45 15 5 4], 'FaceColor', 'blue', 'Edgecolor','none');
r_3 = rectangle('Position',[3 30 7 4], 'FaceColor', 'red', 'Edgecolor','none');
r_4 = rectangle('Position',[17 31 23 3], 'FaceColor', 'green', 'Edgecolor','none');
r_5 = rectangle('Position',[12 46 5 4], 'FaceColor', 'blue', 'Edgecolor','none');
%% create base station and aim point for our ant colony system
a=[21 2];
b=[48 48];
x_s=21;
y_s=2;
a_point= viscircles(a,2);
b_point= viscircles(b,2);
%% create velocity constant
vel=0.3;
%% create artificial ant
pos1=[22.5, 2.2,1,1];
pos2=[20.5, 1.5,1,1];
pos3=[20.5, 1,1,1];
movingpoint_1=rectangle('Parent',gca,'Position',pos1,'Curvature',[1 1], 'FaceColor', 'black', 'Edgecolor','none');
movingpoint_2=rectangle('Parent',gca,'Position',pos2,'Curvature',[1 1], 'FaceColor', 'black', 'Edgecolor','none');
movingpoint_3=rectangle('Parent',gca,'Position',pos3,'Curvature',[1 1], 'FaceColor', 'black', 'Edgecolor','none');
%% gg

right5=0;
left5=0;
startpos=[20.5, 2.2];
endpos=[22, 13.8];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
flag=0;

%% create timeline
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
flag=1;

    
%% -->
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
if flag==1
     t=1:0.5:5;
    X=endpos(1)-x_vel*t;
    Y=endpos(2)-y_vel*t;

trajectory=[X;Y];

for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
end

%2nd robot

startpos1=[20.5, 1.5];
endpos1=[20, 13.8];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
flag=0;

%% create timeline
t=1:0.5:Ttime;

%% -->
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;
flag=1;

    
%% -->
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
if flag==1
     t=1:0.5:5;
    X=endpos1(1)-x_vel*t;
    Y=endpos1(2)-y_vel*t;

trajectory=[X;Y];

for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
end



disp(X);
disp(Y);
a=X;
b=Y;
left1=0,right1=0;
startpos=[21.80,12.31];
endpos=[21.80+7,12.31];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
right5=right5+1;



startpos=endpos;
endpos=[endpos(1),endpos(2)+18];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[endpos(1),endpos(2)-3];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end



startpos=endpos;
endpos=[endpos(1)+15,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[48,48];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end



%2nd robot left

startpos1=[endpos1(1),endpos1(2)];
endpos1=[endpos1(1)-5,endpos1(2)];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
left5=left5+1;



startpos1=endpos1;
endpos1=[endpos1(1),endpos1(2)+32];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
startpos1=endpos1;
endpos1=[endpos1(1),endpos1(2)-3];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos1=endpos1;
endpos1=[48,49];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end


    
    
%1st robot back


endpos=startpos;
startpos=[48,48];

x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end    

startpos=endpos;
endpos=[endpos(1)-15,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
startpos=endpos;
endpos=[endpos(1),endpos(2)-18];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[endpos(1)-7,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
right5=right5+1;


startpos=endpos;
endpos=[22.5,1.5];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
flag=0;

%% create timeline
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
flag=1;

    
%% -->
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

%3rd robot


startpos=[20.5, 1];
endpos=[22, 13.8];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
flag=0;

%% create timeline
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
flag=1;

    
%% -->
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

if flag==1
     t=1:0.5:5;
    X=endpos(1)-x_vel*t;
    Y=endpos(2)-y_vel*t;

trajectory=[X;Y];

for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
end

%3rd robot

if(right5>left5)
   
 startpos=[21.80,12.31];
endpos=[21.80+7,12.31];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
right5=right5+1;



startpos=endpos;
endpos=[endpos(1),endpos(2)+18];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[endpos(1),endpos(2)-3];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end



startpos=endpos;
endpos=[endpos(1)+15,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[48,48];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_3,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
end
if(left5>right5)
    startpos1=[endpos1(1),endpos1(2)];
endpos1=[endpos1(1)-5,endpos1(2)];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
left5=left5+1;



startpos1=endpos1;
endpos1=[endpos1(1),endpos1(2)+32];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
startpos1=endpos1;
endpos1=[endpos1(1),endpos1(2)-3];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos1=endpos1;
endpos1=[48,49];
x_dis=endpos1(1)-startpos1(1);
y_dis=endpos1(2)-startpos1(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos1(1)+x_vel*t;
Y=startpos1(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_2,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end


    
    
%1st robot back


endpos=startpos;
startpos=[48,48];

x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end    

startpos=endpos;
endpos=[endpos(1)-15,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;

trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
startpos=endpos;
endpos=[endpos(1),endpos(2)-18];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end

startpos=endpos;
endpos=[endpos(1)-7,endpos(2)];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
right1=right1+1;
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
right5=right5+1;


startpos=endpos;
endpos=[22.5,1.5];
x_dis=endpos(1)-startpos(1);
y_dis=endpos(2)-startpos(2);
Dis=sqrt(x_dis^2+y_dis^2);
%% calculate time
Ttime=Dis/vel;
%% calculate x velocity and y velocity
x_vel=vel*x_dis/Dis;
y_vel=vel*y_dis/Dis;
flag=0;

%% create timeline
t=1:0.5:Ttime;

%% -->
X=startpos(1)+x_vel*t;
Y=startpos(2)+y_vel*t;
flag=1;

    
%% -->
trajectory=[X;Y];
for frameNo=1:length(t)
    set(movingpoint_1,'position',[trajectory(1,frameNo)-0.7,trajectory(2,frameNo)-0.7,1,1]);
    frames(frameNo)=getframe;
end
end
    

