% Построение графиков откалиброванного ускорения
figure;
hold on
plot(N,TrueA(:,1), 'b', 'DisplayName','X');
plot(N,TrueA(:,2), 'r','DisplayName','Y');
plot(N,TrueA(:,3), 'g','DisplayName','Z');
title('Откалиброванные значения ускорения');
ylim([-1500 1500])
grid on
hold off

% Построение графика модуля ускорения после калибровки
figure;
hold on
plot(N,ProvModule, 'b');
title('Модуль ускорения');
grid on
hold off

% Вычисление модуля разности между откалиброванным и неоткалиброванным ускорением 
DeltaAcc = abs(TrueA - Accel);
ModuleDelta = sqrt(sum(DeltaAcc.^2, 2));

% Построение графика разности между откалиброванным и неоткалиброванным ускорением 
figure;
hold on
plot(N,DeltaAcc(:,1), 'b','DisplayName','X');
plot(N,DeltaAcc(:,2), 'r','DisplayName','Y');
plot(N,DeltaAcc(:,3), 'g','DisplayName','Z');
title('Разница');
grid on
hold off

% Построение графика модуля разности между откалиброванным и неоткалиброванным ускорением 
figure;
hold on
plot(N,ModuleDelta, 'b');
title('Модуль разницы');
grid on
hold off