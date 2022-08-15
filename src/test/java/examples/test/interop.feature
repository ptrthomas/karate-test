Feature:

  Scenario:
    * print 'before calling Java code'
    * def Utils = Java.type('examples.test.Utils')
    * def result = Utils.greet('John')
    * match result == { message: 'Hello John' }
