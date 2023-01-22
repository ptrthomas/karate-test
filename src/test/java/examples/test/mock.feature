@ignore
Feature:

Background:
* configure beforeScenario = function(){ karate.log('before:', request.headers )}

Scenario:
    * def response = { success: true }