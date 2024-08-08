fprintf('\n Q2c \n\n')

[Mass_kg, OuterRadius_m, density] = deal(57.7/1000, 6.7/200, 1100);
V = Mass_kg/density;
InnerRadius_m = (OuterRadius_m^3 - (3*V/(4*pi)))^(1/3);
Inertia = (2*Mass_kg/3)*((OuterRadius_m^5-InnerRadius_m^5)/(OuterRadius_m^3 - InnerRadius_m^3));

fprintf("The inertia of the tennis ball is %d\n", Inertia);

initial_KE = (1/2)*Inertia*(Initial_RPM/(60*2*pi))^2;
for n = 1:length(final_t)
    KE(n) = (1/2)*Inertia*((actual_f(final_t(n)))/(60*2*pi))^2;
    percent_loss(n) = 100*((initial_KE - KE(n))/initial_KE);
end

figure(6)
yyaxis right
plot(final_t,percent_loss,'r-')
legend("No. of Rotations","Ratio of lost energy: initial enery",'location','best')
ylabel('% lost energy')
xlabel('time')
