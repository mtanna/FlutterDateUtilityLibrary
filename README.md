# Date Utility

A Project for get date methods

## Feature

- Get date function

&#10240; <!-- line space -->
&#10240; <!-- line space -->


## Example

1. Convert milliseconds to date

    - Example 1:
 
          DateUtility.millisecondToDate(1715365800000, formatPattern: 'yyyy-MM-dd',);    // 2024-05-11
      
    - Example 2:
 
          DateUtility.millisecondToDate(1715365800000, formatPattern: 'd MMM yyyy',);    // 11 May 2024
          
2. Convert date to milliseconds

    - Example 1:
 
          DateUtility.dateToMillisecond('2024-05-11');    // 1715365800000
      
    - Example 2:
 
          DateUtility.dateToMillisecond('11 May 2024');    // 1715365800000

3. Change date format

    - Example 1:
 
          DateUtility.changeDateFormat('2024-05-11', '11 May 2024');    // 2024-05-11 convert to 11 May 2024
      
    - Example 2:
 
          DateUtility.changeDateFormat('11 May 2024', '2024-05-11');    // 11 May 2024 convert to 2024-05-11

4. Count days
  
    - Example 1:
 
          DateUtility.daysBetween('2024-05-10', '2024-05-11');    // 1 days
      
    - Example 2:
 
          DateUtility.daysBetweenWithMilliSecond(1715279400000, 1715365800000);    // 1 days

5. Time ago
   
    - Example 1:
 
          DateUtility.timeAgoSinceDate('2024-05-10', numericDates: true,);    // 1 day ago
      
    - Example 2:
 
          DateUtility.timeAgoSinceMilliseconds(1715279400000, numericDates: true,);    // 1 days ago

      | numericDates = true | numericDates = false |
      |-------------------- | -------------------- |
      | 1 minute ago        | A minute ago         |
      | 1 hour ago          | An hour ago          |  
      | 1 day ago           | Yesterday            |
      | 1 week ago          | Last week            |
      | 1 month ago         | Last month           |
      | 1 year ago          | Last year            |




   