SELECT *
FROM [dbo].[CAR DATA$]

Client requested a car dealer agent How many petrol cars will there be in 2020
SELECT COUNT(*)
FROM [dbo].[CAR DATA$]
WHERE [fuel] = 'Petrol'
AND
[year] = '2020';


The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.
SELECT [fuel]
		,[year]
FROM [dbo].[CAR DATA$]
WHERE [fuel] IN ('Petrol', 'Diesel', 'CNG')
AND [year] IS NOT NULL;


Manager said there were more than 100 cars in a given year, which year had more than 100 cars
SELECT [year]
		,COUNT([Name]) AS [No of Cars]
FROM [dbo].[CAR DATA$]
GROUP BY [year]
HAVING COUNT([Name])>100;


The manager said to the employees All cars count details between 2015 and 2023; we need a complete list.
SELECT COUNT(*)
FROM [dbo].[CAR DATA$]
WHERE [year] BETWEEN '2015' AND '2023';

The manager said to the employees All cars details between 2015 to 2023 we need complete list
SELECT *
FROM [dbo].[CAR DATA$]
WHERE [year] BETWEEN '2015' AND '2023';


Total Cars: To get a count of total records
SELECT COUNT(*)
FROM [dbo].[CAR DATA$];

The manager asked the employee How many cars will be available in 2023?
SELECT COUNT(*)
FROM [dbo].[CAR DATA$]
WHERE [year] = '2023';


The manager asked the employee How many cars is available in 2020, 2021, 2022
SELECT COUNT(*)
		,[year]
FROM [dbo].[CAR DATA$]
WHERE [year] IN ('2020','2021', '2022')
GROUP BY [year];

Clint asked me to print the total of all cars by year. 
SELECT COUNT(*)
		,[year]
FROM [dbo].[CAR DATA$]
GROUP BY [year];
