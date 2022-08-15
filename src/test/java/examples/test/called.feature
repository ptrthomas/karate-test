Feature:

  Scenario:
    * print 'in called'
    * def caller = karate.engine.runtime.caller.parentRuntime.scenario.feature
    * print caller