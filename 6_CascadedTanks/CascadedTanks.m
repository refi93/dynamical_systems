initial_flow_in = [0; 0; 0];

% Verhulst tumor growth model
tank_area1 = 5.3;
tank_area2 = 5.3;
out_area1 = 0.0961;
out_area2 = 0.1920;
p1 = 0.4;
p2 = 0.5;
gain = 33.6;
gamma = 3;
u = 1;

[t, y] = ode23(@(t,y) tanks(t,y,tank_area1, tank_area2, out_area1, out_area2, p1, p2, gain, gamma, u), [0 100], initial_flow_in);

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
