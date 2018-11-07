% Coleman Lyski
%
% September 29, 2016
%
% Homework 4
%% Problem 1
clear; close all; clc; home
hwavg=input('Enter Homework Average (0-100): ');
labavg=input('Enter Lab Average (0-100): ');
quizavg=input('Enter Quiz/Attendance Average (0-100): ');
midterm=input('Enter Midterm Score (1-100): ');
final=input('Enter Final Exam Score (1-100): ');
courseavg=(.25*hwavg+.25*labavg+.1*quizavg+.2*midterm+.2*final);
fprintf('\nYour Final Course Average: %0.1f%%',courseavg)
caw=round(courseavg);
if 100>=caw & caw>=90
    letter='A';
elseif 90>caw & caw>=80
    letter='B';
elseif 80>caw & caw>=70
    letter='C';
elseif 70>caw & caw>=60
    letter='D';
elseif 60>caw & caw>=0
    letter='F';
else
    letter='Invalid';
end
fprintf('\nYour Letter Grade: %s',letter)
%% Problem 2
clear; close all; clc; home
conversion=menu('Pick a Conversion','F to C','C to F','F to K','K to F','C to K','K to C');
switch conversion
    case 1
        f=input('\nEnter degrees in Fahrenheit: ');
        c=(f-32)*(5/9);
        fprintf('%0.2f degrees Fahrenheit = %0.2f degrees Celsius',f,c)
    case 2
        c=input('\nEnter degrees in Celsius: ');
        f=(c*(9/5))+32;
        fprintf('%0.2f degrees Celsius = %0.2f degrees Fahrenheit',c,f)
    case 3
        f=input('\nEnter degrees in Fahrenheit: ');
        k=(f-32)*(5/9)+273.15;
        fprintf('%0.2f degrees Fahrenheit = %0.2f degrees Kelvin',f,k)
    case 4
        k=input('\nEnter degrees in Kelvin: ');
        f=(k-273.15)*(9/5)+32;
        fprintf('%0.2f degrees Kelvin = %0.2f degrees Fahrenheit',k,f)
    case 5
        c=input('\nEnter degrees in Celcius: ');
        k=c+273.15;
        fprintf('%0.2f degrees Celsius = %0.2f degrees Kelvin',c,k)
    case 6
        k=input('\nEnter degrees in Kelvin: ');
        c=k-273.15;
        fprintf('%0.2f degrees Kelvin = %0.2f degrees Celsius',k,c)
end
%% Problem 3
clear; close all; clc; home
k1=input('Enter in spring constant for Spring 1 in N/m: ');
k2=input('Enter in spring constant for Spring 2 in N/m: ');
F=input('Enter total force applied to the mass in N: ');
type=menu('Series or Parallel','Series','Parallel');
switch type
    case 1
        keq=(1/k1+1/k2)^-1;
        x1=F/k1;
        x2=F/k2;
        F1=k1*x1;
        F2=k2*x2;
        Ft=keq*(x1+x2);
        xt=(F/k1)+(F/k2);
        fprintf('\n\nKeq: %0.2f',keq)
        fprintf('\nx1: %0.2f',x1)
        fprintf('\nx2: %0.2f',x2)
        fprintf('\nF1: %0.2f',F1)
        fprintf('\nF2: %0.2f',F2)
        fprintf('\nxtotal: %0.2f',xt)
    case 2
        keq=k1+k2;
        xt=F/(k1+k2);
        x1=xt;
        x2=xt;
        F1=k1*x1;
        F2=k2*x2;
        Ft=F1+F2;
        fprintf('\n\nKeq: %0.2f',keq)
        fprintf('\nx1: %0.2f',x1)
        fprintf('\nx2: %0.2f',x2)
        fprintf('\nF1: %0.2f',F1)
        fprintf('\nF2: %0.2f',F2)
        fprintf('\nxtotal: %0.2f',xt)
end



























