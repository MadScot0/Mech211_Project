%% Part A

year1 = LAKE_POWELL(:, 1)
year2 = LAKE_POWELL(:, 2)
year3 = LAKE_POWELL(:, 3)
year4 = LAKE_POWELL(:, 4)
year5 = LAKE_POWELL(:, 5)
year6 = LAKE_POWELL(:, 6)
year7 = LAKE_POWELL(:, 7)
year8 = LAKE_POWELL(:, 8)

total_years = [year1, year2, year3, year4, year5, year6, year7, year8]

average_per_year = mean(total_years)

average_total = mean(average_per_year)


