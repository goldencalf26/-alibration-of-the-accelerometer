% Построение графика сырого ускорения от времени
N = 1:length(Accel);
figure;
hold on
plot(N,Module);
title('Неоткалиброванный модуль ускорения');
grid on
hold off

% Построение графика неоткалиброванных значений ускорения
figure;
hold on
plot(N,Accel(:,1), 'b', 'DisplayName','X');
plot(N,Accel(:,2), 'r','DisplayName','Y');
plot(N,Accel(:,3), 'g','DisplayName','Z');
title('Неоткалиброванные значения ускорения');
grid on
hold off