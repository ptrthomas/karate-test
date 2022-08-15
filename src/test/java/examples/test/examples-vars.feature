Feature:

  Background:
    * def value = 123
    * def data = [{ foo: '#(value)', bar: 0 }]

  Scenario Outline: scenario
    * print foo
    * print bar

    Examples:
      | data |