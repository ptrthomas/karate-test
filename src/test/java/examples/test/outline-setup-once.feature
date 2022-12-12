Feature:

@setup
Scenario:
* print 'in setup'
* def data = [{ a: 1 }, { a: 2 }]

Scenario Outline:
* print 'first:', __row

Examples:
| karate.setupOnce().data |

Scenario Outline:
* print 'second:', __row
    
Examples:
| karate.setupOnce().data |
