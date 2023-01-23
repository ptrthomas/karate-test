Feature: three HTTP calls in a loop

@setup
Scenario:
# do some http stuff here
* def data = [ { myNum: 1 }, { myNum: 2 }, { myNum: 3 } ]

Scenario Outline: using value: ${myNum}
* url `https://httpbin.org/anything/${myNum}`
* method get

Examples:
| karate.setup().data |
