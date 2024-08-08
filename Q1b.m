fprintf('\n Q1b \n\n')

 for n = 1: 396
     [AfricaCases(n), NorthAmericaCases(n), SouthAmericaCases(n), OceaniaCases(n), AsiaCases(n), EuropeCases(n), AfricaDeaths(n), AsiaDeaths(n), NorthAmericaDeaths(n), SouthAmericaDeaths(n), EuropeDeaths(n), OceaniaDeaths(n)] = deal(0,0,0,0,0,0,0,0,0,0,0,0);
     for m = 1:length(Total_Cases)
         if Corrected_days_tracked(m) == n
             if strcmp(Continent(m), 'Africa') == 1
                AfricaCases(n) = AfricaCases(n) + Total_Cases(m);
                AfricaDeaths(n) = AfricaDeaths(n) + Total_Deaths(m);
                continue
             end
             if strcmp(Continent(m), 'Asia') == 1
                 AsiaCases(n) = AsiaCases(n) + Total_Cases(m);
                 AsiaDeaths(n) = AsiaDeaths(n) + Total_Deaths(m);
                 continue
             end
             if strcmp(Continent(m), 'North America') == 1
                 NorthAmericaCases(n) = NorthAmericaCases(n) + Total_Cases(m);
                 NorthAmericaDeaths(n) = NorthAmericaDeaths(n) + Total_Deaths(m);
                 continue
             end
             if strcmp(Continent(m), 'South America') == 1
                 SouthAmericaCases(n) = SouthAmericaCases(n) + Total_Cases(m);
                 SouthAmericaDeaths(n) = SouthAmericaDeaths(n) + Total_Deaths(m);
                 continue
             end
             if strcmp(Continent(m), 'Oceania') == 1
                 OceaniaCases(n) = OceaniaCases(n) + Total_Cases(m);
                 OceaniaDeaths(n) = OceaniaDeaths(n) + Total_Deaths(m);
                 continue
             end
             if strcmp(Continent(m),'Europe') == 1
                 EuropeCases(n) = EuropeCases(n) + Total_Cases(m);
                 EuropeDeaths(n) = EuropeDeaths(n) + Total_Deaths(m);
                 continue
             end
         end
     end
 end



figure(1)
subplot(1,2,1)
plot(Days_Tracked(1:396),AfricaCases,'r-',Days_Tracked(1:396),AsiaCases,'b-',Days_Tracked(1:396),NorthAmericaCases,'m-',Days_Tracked(1:396),OceaniaCases,'g-',Days_Tracked(1:396),SouthAmericaCases,'y-',Days_Tracked(1:396),EuropeCases,'k-')
legend('Africa','Asia','North America', 'Oceania', 'South America', 'Europe')
legend('location','best')
xlabel('Days since 1st-Aug-2020')
hold on
ylabel('Total amount of cases(x10^7)')

subplot(1,2,2)
plot(Days_Tracked(1:396),AfricaDeaths,'r-',Days_Tracked(1:396),AsiaDeaths,'b-',Days_Tracked(1:396),NorthAmericaDeaths,'m-',Days_Tracked(1:396),OceaniaDeaths,'g-',Days_Tracked(1:396),SouthAmericaDeaths,'y-',Days_Tracked(1:396),EuropeDeaths,'k-')
legend('Africa','Asia','North America', 'Oceania', 'South America', 'Europe')
legend('location','best')
xlabel('Days since 1st-Aug-2020')
hold on
ylabel('Total amount of deaths(x10^5)')