%% Part A

% each years' data broken up into columns 
year1 = LAKE_POWELL(:, 1);
year2 = LAKE_POWELL(:, 2);
year3 = LAKE_POWELL(:, 3);
year4 = LAKE_POWELL(:, 4);
year5 = LAKE_POWELL(:, 5);
year6 = LAKE_POWELL(:, 6);
year7 = LAKE_POWELL(:, 7);
year8 = LAKE_POWELL(:, 8);

% matrix form of the Lake Powell data
total_years = [year1, year2, year3, year4, year5, year6, year7, year8];
% the average water level for each year
average_per_year = mean(total_years)

% the average between all the data for 8 years
average_total = mean(average_per_year)
%%average_total = mean(total_years, 'all')

% year axis for the plot
year_axis = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007];

user_Choice = menu("How would you like to view the Lake Powell data?","Plot","Bar","Subplot")

switch User_Choice
    case "Plot"
        % instructions to a create a line graph with circular markers, water level
        % vs time
        plot(year_axis, average_per_year,'-o')
        grid on
        xlabel('Time, years')
        ylabel('Water Level, feet')
        title('Average Elevation of Water Level Per Year')

    %% Part B
    case "Bar"
        counter = [0,0,0,0,0,0,0,0]
        
        %Number of months exceeding average for each year
        
        for i = 1:8
            for k = 1:length(LAKE_POWELL(:,i))
                if LAKE_POWELL(k,i)>average_total
                    counter(i) = counter(i) + 1;
                end
            end
        end

        %Bar graph of data
        bar(counter)
    case "Pie"
        %% Part C
        %take mean of transpose of total_years
        month_averages = mean(total_years');
        %pie chart
        pie(month_averages)
    case "Subplot"
        %% Part D
        
        %Make the plot
        subplot(2,2,1)
        % instructions to a create a line graph with circular markers, water level
        % vs time
        plot(year_axis, average_per_year,'-o')
        grid on
        xlabel('Time, years')
        ylabel('Water Level, feet')
        title('Average Elevation of Water Level Per Year')
        
        %Plot the bar graph
        subplot(2,2,2)
        counter = [0,0,0,0,0,0,0,0]
        
        %Number of months exceeding average for each year
        
        for i = 1:8
            for k = 1:length(LAKE_POWELL(:,i))
                if LAKE_POWELL(k,i)>average_total
                    counter(i) = counter(i) + 1;
                end
            end
        end
        
        %Bar graph of data
        bar(counter)
        
        %Plot the pie chart
        %take mean of transpose of total_years
        month_averages = mean(total_years');
        %pie chart
        pie(month_averages)
end
