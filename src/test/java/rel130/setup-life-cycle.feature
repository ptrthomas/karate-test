Feature: setup life cycle

@setup
Scenario:
* def data = [{ a: 1 }, { a: 2 }, { a: 3 }]

Scenario Outline:
* print __row

Examples:
| karate.setup().data |
