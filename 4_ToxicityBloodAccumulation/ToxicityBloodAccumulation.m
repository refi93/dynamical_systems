toxic_concentration = 10.0;
elimination_coef = 0.45;

params_set = {{0, '-'}, {20, '--'}, {50, '-o'}};
set_size = size(params_set, 1);

colors=hsv(set_size);
lines = [];
labels = {};
figure; hold on;

for params = params_set
    [initial_concentration, stroke] = deal(params{1}{:});
    
    [t, y] = ode23(@(t,y) bloodToxicConcentration(t,y, toxic_concentration, elimination_coef), [0 10], initial_concentration);
    lines = [lines; plot(t, y(:,1), stroke)];
    
    x = sprintf('init. concentration: %d', initial_concentration);
    labels{end + 1} = sprintf('init. concentration: %d', initial_concentration);
end

legend(lines, labels);
title('Toxicity of blood with ODE23');
xlabel('Time t');
ylabel('Toxic concentration');
