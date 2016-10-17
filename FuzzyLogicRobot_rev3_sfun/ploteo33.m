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
axis([-0.1 3.5 -0.1 3.5])

%ploteo señales de error con ruido 

%Distancia si se introdujo ruido blanco
%d_robot=Ruido_Dist.Data';
%d_input=R_Ref.Data';
figure('Name','Distancia con ruido blanco','NumberTitle','off')
plot(Ruido_Dist)%d_robot(1,:),d_robot(2,:))
hold
plot(R_Ref,'r')%d_input(1,:),d_input(2,:),'r')
%axis([-0.1 3.1 -0.1 3.1])

%Distancia si se introdujo ruido blanco
%o_robot=Ruido_Orient.Data';
%o_input=AngCorregido.Data';
figure('Name','Orientacion con ruido blanco','NumberTitle','off')
plot(Ruido_Orient)%o_robot(1,:),o_robot(2,:))
hold
plot(AngCorregido,'r')%o_input(1,:),o_input(2,:),'r')
