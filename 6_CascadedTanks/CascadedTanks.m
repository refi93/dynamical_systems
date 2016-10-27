initial_conditions = [3; 2; 0]; %tank1 height, tank2 height, initial flow

% Verhulst tumor growth model
tank1_area = 5.3;
tank2_area = 5.3;
out1_area = 0.0961;
out2_area = 0.1920;
p1 = 0.4;
p2 = 0.5;
gain = 33.6;
tau = 3;
u = 0;
tank1_max_height = 3;
tank2_max_height = 3;

[t, y] = ode23(@(t,y) tanks(t,y,tank1_area, tank2_area, out1_area, out2_area, p1, p2, gain, tau, u, tank1_max_height, tank2_max_height), [0 10], initial_conditions);

figure; hold on;
tank1_plot = plot(t, y(:,1), '-');
tank2_plot = plot(t, y(:,2), '--');
title('Tank height over time');
xlabel('Time t');
ylabel('Tank height');
legend([tank1_plot, tank2_plot], ['tank 1 (lower)'; 'tank 2 (upper)']);

figure;
plot(t, y(:,3) * gamma);
title('Flow into the second tank');
xlabel('Time t');
ylabel('Flow');
