clc; clear; close all;
%Regla de Simpson 1/3 
% Datos F(x)= 0.2+25x-200x^2+675x^3-900x^4+400x^5
F=@(x) 0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;
S=1.640533;
n=6;
a=0;
b=0.8;
%Encontramos h 
h=(b-a)/n;
%Encontramos nuestras X
X0=0+0*h;
X1=0+1*h;
X2=0+2*h;
X3=0+3*h;
X4=0+4*h;
X5=0+5*h;
X6=0+6*h;
%Ecuaciones 
FX0=F(X0);
FX1=F(X1);
FX2=F(X2);
FX3=F(X3);
FX4=F(X4);
FX5=F(X5);
FX6=F(X6);
%Formula
I=(b-a)*(((FX0 +(4*(FX1+FX3+FX5)))+(2*(FX2+FX4))+FX6)/(3*6));
%integral definida
syms x
f =  0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;               % función original
f4 = diff(f, x, 4);         % Cuarta derivada
int_f4 = int(f4, x); %integral 

%Error
E1=abs((S-I)/S)*100;
ET=-((b-a)^5/(180*6^6))*(-2400);

fprintf('La formula da: %f\n', I);
disp('La integral es:');
pretty(int_f4)
fprintf('El error porcentual es: %f\n', E1);
fprintf('El error absoluto es: %f\n', ET);