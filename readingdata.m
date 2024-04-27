% Открытие лога
fileID = fopen('LOGS2.log');
Line = fgetl(fileID);
str = [];

% Чтение данных из файла
while ischar(Line)
    str = [str Line];
    Line = fgetl(fileID);
end

% Преобразование строк в байты
l = length(str) - 1;
k = 0;
data = [];

% Преобразование байтов в числа
for i = 0:l/3 - 1
    data = [data hex2dec(str(i*3+1:i*3+2))];
end