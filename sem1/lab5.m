% Coleman Lyski
%
% September 20, 2016
%
% Lab 5: Collisions
clear; 
close all; 
home;
clc;
m1 = input('\nEnter the mass of object one in kg = ');
v1 = input('Enter the velocity of object one in m/s = ');
m2 = input('Enter the mass of object two in kg = ');
v2 = input('Enter the velocity of object two in m/s = ');
fprintf('\nInitial state before and potential impact:');
ke1 = (1/2)*m1*(v1)^2;
ke2 = (1/2)*m2*(v2)^2;
ket = ke1 + ke2;
fprintf('\nKinetic Energy of object one = %0.2f (J)',ke1);
fprintf('\nKinetic Energy of object two = %0.2f (J)',ke2);
fprintf('\nThe total Kinetic Energy = %0.2f (J)',ket);
if v1 > v2
    collide=1;
    fprintf('\nThe objects will collide = %0.0f\n',collide)
else
    collide=0;
    fprintf('\nThe objects will not collide = %0.0f\n',collide)
end
if collide==1
    type=menu('Collision Type','Inelastic','Elastic');
    switch type
        case 1
            fprintf('\nThe collision is inelastic');
            vf = (m1*v1 + m2*v2)/(m1 + m2);
            fprintf('\nThe final velocity is %0.2f (m/s)',vf);
            cke1 = (1/2)*m1*(vf)^2;
            cke2 = (1/2)*m2*(vf)^2;
            cket = (1/2)*(m1+m2)*(vf)^2;
            fprintf('\nThe Kinetic Energy of object one is %0.2f (J)',cke1);
            fprintf('\nThe Kinetic Energy of object two is %0.2f (J)',cke2);
            fprintf('\nThe total Kinetic Energy of the objects is %0.2f (J)',cket);
            if vf>0
                fprintf('\nThe objects are moving to the right')
            elseif vf<0
                fprintf('\nThe objects are moving to the left')
            else
                fprintf('\nThe objects do not move after the collision')
            end
        case 2
            fprintf('\nThe collision is elastic');
            v1f = ((m1 - m2)/(m1 + m2))*v1 + ((2*m2)/(m1 + m2))*v2;
            v2f = ((m2 - m1)/(m1 + m2))*v2 + ((2*m1)/(m1 + m2))*v1;
            fprintf('\nThe final velocity of object one is %0.2f (m/s)',v1f);
            fprintf('\nThe final velocity of object two is %0.2f (m/s)',v2f);
            cke1 = (1/2)*m1*(v1f)^2;
            cke2 = (1/2)*m2*(v2f)^2;
            cket = cke1 + cke2;
            fprintf('\nThe Kinetic Energy of object one is %0.2f (J)',cke1);
            fprintf('\nThe Kinetic Energy of object two is %0.2f (J)',cke2);
            fprintf('\nThe total Kinetic Energy of the objects is %0.2f (J)',cket);
            if sign(v1)==1
                fprintf('\nObject one was originally moving to the right')
                if sign(v1f)==1
                    fprintf(' and object one continued moving to the right after the collision')
                else
                    fprintf(' and object one changed direction after the collision')
                end
            else
                fprintf('\nObject one was originally moving to the left')
                if sign(v1f)==0
                    fprintf(' and object one continued moving to the left after the collision')
                else
                    fprintf(' and object one changed direction after the collision')
                end
            end
            if sign(v2)==1
                fprintf('\nObject two was originally moving to the right')
                if sign(v2f)==1
                    fprintf(' and object two continued moving to the right after the collision')
                else
                    fprintf(' and object two changed direction after the collision')
                end
            else
                fprintf('\nObject two was originally moving to the left')
                if sign(v2f)==0
                    fprintf(' and object two continued moving to the left after the collision')
                else
                    fprintf(' and object two changed direction after the collision')
                end
            end
    end
end




