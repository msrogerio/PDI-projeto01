%% Projeto 01
% Autor: Marlon da Silva Rogério

%% Referências
% GONZALEZ, R. C., WOODS, R. E. Processamento de Imagens Digitais. Editora Edgard Blucher, ISBN  São Paulo, 2000.
% Support MathWorks, 2021. Disponível em: <https://www.mathworks.com/help/>. Acesso  em: 10 de abr. de 2021.
% Installation Packages, 2021. Disponível em: <https://octave.sourceforge.io/>. Acesso em: 10 de abr. de 2021.

%% Parte 01
% (1) Implementar funções (com parâmetros)
% Sintetizar sinais: sin(x); cos(x); sinc(x); degrau unitário, triângulo, retângulo, pulso exponencial.
% Visualizar tais sinais em 2000 pontos (eixo x onde x será o tempo, centradas no zero e normalizadas*)

close all; clear; clc;
% Função seno de X
x = linspace(-10, 10, 2000);
y = sin(x);
plot(x, y)
legend("Seno de X")

% Função consseno de X
x = linspace(-10, 10, 2000);
y = cos(x);
figure
plot(x, y, 'r')
legend("Cosseno de X")

% Função sinc de X
x = linspace(-10, 10, 2000);
y = sinc(x);
figure
plot(x, y, 'g')
legend("Sinc de X")

% Função Degrau Unitário de X
x = linspace(-10, 10, 2000);
y = heaviside(x);
figure
plot(x, y, 'c')
legend("Degrau unitário de X")

% Função Pulso triagular de X
x = linspace(-10, 10, 2000);
y = tripuls(x);
figure
plot(x, y, 'm')
legend("Pulso triagular de X")

% Função Pulso retangular de X
x = linspace(-10, 10, 2000);
y = rectpuls(x);
figure
plot(x, y, 'b')
legend("Pulso retangular de X")

% Função Pulso exponencial de X
x = linspace(-10, 10, 2000);
y = exp(x);
figure
plot(x, y, 'k')
legend("Pulso exponencial de X")

%% Parte 02
% (2) Escolha um sinal sintetizado acima. Aplicar uma Dilatação e um Deslocamento
% Visualizar o sinal original, sinal dilatado e o deslocado. Os três sinais -- original, dilatação e deslocado-- na mesma figura.
close all; clear; clc;
%A função escolhida: cosseno de X

x = linspace(-10, 10, 2000);
y = cos(x);
dilatacao = 2;
ydilatado = cos(x*dilatacao);

deslocamento = 2
ydeslocado = cos(x-deslocamento);

plot(x, y, 'c')
hold on
plot(x, ydilatado, 'r')
plot(x, ydeslocado, 'b')
legend("cos(x)", "cos(x) dilatado *2", "cos(x) deslocado -2")
hold off


%% Parte 03
% (3). Escolha um sinal sintetizado acima (1). Processar os sinais sintetizados e aplicar: Integral e a Derivada
% Visualizar em uma figura o sinal original, a derivada e o comportamento da integral *
% * a integração pode ser desde o ponto inicial até um ponto t, visualizar em t

close all; clear; clc;
%A função escolhida: sinc de X
x = linspace(-10, 10, 2000);
y = x.^2; 
diferencial = diff(y);
plot(x, y,'b') 
legend("Função sinc de x")
grid on; hold on 
plot(x(1:end-1), diferencial,'g')  
legend("Diferencial de sinc(x)")
integral =[];
for index=1:length(y)
    integral(index) = trapz(y(1:index));
end
figure;
plot(x,integral,'r-')
legend("Integral cumulativa de sinc(x)")







