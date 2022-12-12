Feature:

Scenario:
* def toDate =
"""
function(date) {
  var Formatter = Java.type("java.time.format.DateTimeFormatter");
  var LocalDate = Java.type("java.time.LocalDate");  
  var dtf = Formatter.ofPattern("yyyy-MM-dd");
  return LocalDate.parse(date, dtf);
}
"""

* def dateMinus =
"""
function(dateString, days) {
    var date = toDate(dateString);
    return date.minusDays(days);
}
"""

* def formatDate =
"""
function(date) {
  var Formatter = Java.type("java.time.format.DateTimeFormatter");
  var LocalDate = Java.type("java.time.LocalDate");  
  var dtf = Formatter.ofPattern("yyyy-MM-dd");
  return dtf.format(date);
}
"""

* def beforeDate = '2022-12-08'
* def afterDate = dateMinus(beforeDate, 5)
* def afterDateString = formatDate(afterDate)
* match afterDateString == '2022-12-03'