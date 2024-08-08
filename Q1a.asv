fprintf('\n Q1a \n\n')

all_data = importdata('owid-covid-data_2020-21.csv');
iso_code = all_data.textdata(2:end,1);
Continent = all_data.textdata(2:end,2);
Location = all_data.textdata(2:end,3);
Date = all_data.textdata(2:end,4);
Days_Tracked = all_data.data(:,1);
Total_Cases = all_data.data(:,2);
Total_Deaths = all_data.data(:,3);

% Pt.i
for a = 1:length(Total_Cases)
    case_isnt_recorded = isnan(Total_Cases(a));
    death_isnt_recorded = isnan(Total_Deaths(a));
    if case_isnt_recorded == 1
        Total_Cases(a) = 0;
    end
    if death_isnt_recorded == 1
        Total_Deaths(a) = 0;
    end
end

% Pt.ii
not_396_count = 0;
for b = 1:length(Total_Cases)
    if  b ~= length(Total_Cases) && Days_Tracked(b) ~= (Days_Tracked(b+1)-1)
        if Days_Tracked(b) == 396
            continue
        end
        not_396_count = not_396_count + 1;
        starting_date_index = b - Days_Tracked(b) + 1;
        not_396(not_396_count,1:4) = [Location(b),Date(starting_date_index),Date(b),Days_Tracked(b)];
        fprintf("(%d)| Country:  %s| Starting Date: %s| Ending Date: %s| No. of Records: %d \n\n", not_396_count,cell2mat(Location(b)),cell2mat(Date(starting_date_index)),cell2mat(Date(b)),Days_Tracked(b));
    end
end

% Pt.iii

for c = 1:length(Total_Cases)
    Corrected_days_tracked(c) = days(datetime(Date(c), 'InputFormat','dd/MM/yy') - datetime(2020,08,01)) + 1;
     if  strcmp(Location(c), 'Palau') == 1
         fprintf("Corrected Tracked days for Palau: %d  |Tracked Days for Palau:   %d\n", Corrected_days_tracked(c), Days_Tracked(c));
     end
end

