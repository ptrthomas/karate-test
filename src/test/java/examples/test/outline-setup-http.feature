Feature:

@setup
Scenario:
# do some http stuff here
* def data = [ { myNum: 1 }, { myNum: 2 }, { myNum: 3 } ]

Scenario Outline:
* url `https://httpbin.org/anything/${myNum}`
* method get

Examples:
| karate.setup().data |
