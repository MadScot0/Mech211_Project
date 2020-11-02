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
        counter1 = 0;
        %Number of months exceeding average for year 1
        for k1 = 1:length(year1)
            if year1(k1)>average_total
                counter1 = counter1 + 1;
            end
        end

        counter2 = 0;
        %Number of months for year 2
        for k2 = 1:length(year2)
            if year2(k2)>average_total
                counter2 = counter2 + 1;
            end
        end
        
        %etc
        counter3 = 0;
        for k3 = 1:length(year3)
            if year3(k3)>average_total
                counter3 = counter3 + 1;
            end
        end

        counter4 = 0;
        for k4 = 1:length(year4)
            if year4(k4)>average_total
                counter4 = counter4 + 1;
            end
        end

        counter5 = 0;
        for k5 = 1:length(year5);
            if year5(k5)>average_total;
                counter5 = counter5 + 1;
            end
        end

        counter6 = 0;
        for k6 = 1:length(year6);
            if year6(k6)>average_total;
                counter6 = counter6 + 1;
            end
        end


        counter7 = 0;
        for k7 = 1:length(year7);
            if year7(k7)>average_total;
                counter7 = counter7 + 1;
            end
        end


        counter8 = 0;
        for k8 = 1:length(year8);
            if year8(k8)>average_total;
                counter8 = counter8 + 1;
            end
        end
        
        %Bar graph of data
        bar([counter1 counter2 counter3 counter4 counter5 counter6 counter7 counter8])
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
        counter1 = 0;
        %Number of months exceeding average for year 1
        for k1 = 1:length(year1)
            if year1(k1)>average_total
                counter1 = counter1 + 1;
            end
        end

        counter2 = 0;
        %Number of months for year 2
        for k2 = 1:length(year2)
            if year2(k2)>average_total
                counter2 = counter2 + 1;
            end
        end
        
        %etc
        counter3 = 0;
        for k3 = 1:length(year3)
            if year3(k3)>average_total
                counter3 = counter3 + 1;
            end
        end

        counter4 = 0;
        for k4 = 1:length(year4)
            if year4(k4)>average_total
                counter4 = counter4 + 1;
            end
        end

        counter5 = 0;
        for k5 = 1:length(year5);
            if year5(k5)>average_total;
                counter5 = counter5 + 1;
            end
        end

        counter6 = 0;
        for k6 = 1:length(year6);
            if year6(k6)>average_total;
                counter6 = counter6 + 1;
            end
        end


        counter7 = 0;
        for k7 = 1:length(year7);
            if year7(k7)>average_total;
                counter7 = counter7 + 1;
            end
        end


        counter8 = 0;
        for k8 = 1:length(year8);
            if year8(k8)>average_total;
                counter8 = counter8 + 1;
            end
        end
        
        %Bar graph of data
        bar([counter1 counter2 counter3 counter4 counter5 counter6 counter7 counter8])
        
        %Plot the pie chart
        %take mean of transpose of total_years
        month_averages = mean(total_years');
        %pie chart
        pie(month_averages)
end
