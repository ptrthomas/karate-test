Feature:

  Scenario:
    * def data = ['a', 'c', 'b', 'c', 'c', 'd']
    * def count = data.filter(x => x == 'c').length
    * assert count == 3


