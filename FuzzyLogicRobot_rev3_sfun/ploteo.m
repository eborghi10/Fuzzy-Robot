figure('Name','Orientacion al objetivo','NumberTitle','off');
plot(AngCorregido)
figure('Name','Distancia al objetivo','NumberTitle','off');
plot(R_Ref)

t_robot=XY_Robot.Data';
t_input=Trayectoria.Data';
figure('Name','Perseguir al objetivo','NumberTitle','off')
plot(t_robot(1,:),t_robot(2,:))
hold
plot(t_input(1,:),t_input(2,:),'r')
axis([-4 3.5 -3.5 3.5])