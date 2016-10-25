r = 0.2;
k = 22 * 10^7;
a = 0.02;
initial_cell_count = 10^4;

figure; hold on;

% Verhulst tumor growth model
[t, y] = ode23(@(t,y) cellCountVerhulst(t,y,r,k,a), [0 1000], initial_cell_count);
verhulst_plot = plot(t, y(:,1), '-');

% Gompertz tumor growth model
[t, y] = ode23(@(t,y) cellCountGompertz(t,y,r,k,a), [0 1000], initial_cell_count);
gompertz_plot = plot(t, y(:,1), '--');

legend([verhulst_plot, gompertz_plot], ['Verhulst model'; 'Gompertz model']);
title('Tumor size over time');
xlabel('Time t');
ylabel('Tumor size (cell count)');
