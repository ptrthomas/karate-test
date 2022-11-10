@ignore
Feature:

Scenario:
    * def first = read('first.json')
    * def second = read('second.json')
    * def schema = { first: '#(first)', second: '#[] second' }