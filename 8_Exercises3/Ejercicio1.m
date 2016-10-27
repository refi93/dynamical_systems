N1_init = 1;
N2_init = 1;

%simulate the predator-prey ecosystem from year 1 to year 20 departing from
%initial populations N1_init and N2_init
[t,y] = ode23(@function1a,[0 100],[N1_init; N2_init]);
figure;
plot(y(:,1),y(:,2),'-');
title('exercise 1a');

[t,y] = ode23(@function1b,[0 100],[N1_init; N2_init]);
figure;
plot(y(:,1),y(:,2),'-');
title('exercise 1b');

[t,y] = ode23(@function1c,[0 100],[N1_init; N2_init]);
figure;
plot(y(:,1),y(:,2),'-');
title('exercise 1c');