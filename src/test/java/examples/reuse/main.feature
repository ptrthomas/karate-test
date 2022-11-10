Feature: schema reuse demo

Scenario:
    * call read('common.feature')
    * def response = { first: { a: 1 }, second: [{ b: 'x' }] }
    * match response == schema