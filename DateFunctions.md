# SQL Date Functions

Date functions are not the same across various database vendors.  If there are any, it is great coincidence.

## Date Function Documentation by SQL Vendor
- SQLLite Date Functions
  - https://www.sqlitetutorial.net/sqlite-date/ 
  - https://www.sqliz.com/sqlite-ref/date/
- MySQL Date Functions
  - https://www.w3schools.com/sql/sql_dates.asp 
  - https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
  - https://www.mysqltutorial.org/mysql-date-functions/
- SQL Server Date Functions
  - https://www.mssqltips.com/sqlservertip/5993/sql-server-date-and-time-functions-with-examples/
  - https://www.w3schools.com/sql/sql_dates.asp
## Dayname
 The Dayname functionality is to provide the name of the day from a given date.

### MySQL DayName function

- Reference: https://www.w3schools.com/sql/func_mysql_dayname.asp

#### MySQL Example
``` sql
SELECT DAYNAME("2017-06-15");
```
#### Tryit
 Go to http://sqlfiddle.com/#!9/8578d5/2 and cut and paste the SQL example above.



### SQLLite DayName Code
``` sql 
select
  case cast (strftime('%w', '2022-01-01') as integer)
  when 0 then 'Sunday'
  when 1 then 'Monday'
  when 2 then 'Tuesday'
  when 3 then 'Wednesday'
  when 4 then 'Thursday'
  when 5 then 'Friday'
  else 'Saturday' end as weekday
```
### Try it!
Go to https://sqlite.org/fiddle/index.html and paste the example above in this SQLLite environment.

### SQL Server function
Reference: https://www.w3schools.com/sql/func_sqlserver_datename.asp
https://learn.microsoft.com/en-us/sql/t-sql/functions/datename-transact-sql?view=sql-server-ver16

``` sql
SELECT DATENAME(year, '12:10:30.123')  
    ,DATENAME(month, '12:10:30.123')  
    ,DATENAME(day, '12:10:30.123')  
    ,DATENAME(dayofyear, '12:10:30.123')  
    ,DATENAME(weekday, '12:10:30.123'); 
```
### Try it!
Go to a https://sqlfiddle.com and select a MS SQL Server 2017 environment, past the example above and "Build schema" + "Run SQL".



## Date Difference Calculation

### MySQL
Reference: https://www.w3schools.com/sql/func_mysql_datediff.asp

#### Example
```sql
SELECT DATEDIFF("2017-06-25", "2017-06-15");

```
### SQL Server 
Reference: https://www.w3schools.com/sql/func_sqlserver_datediff.asp

#### Example
```sql
SELECT DATEDIFF(year, '2017/08/25', '2011/08/25') AS DateDiff;

```


### SQLLite
Referemce: 
https://learnsql.com/cookbook/how-to-calculate-the-difference-between-two-timestamps-in-sqlite/#:~:text=To%20calculate%20the%20difference%20between%20the%20timestamps%20in%20SQLite%2C%20use,part%20represents%20a%20partial%20day.
#### Example
```sql
SELECT CAST (julianday('2016-08-05') - julianday('2016-08-01') AS INTEGER) as difference;


```


