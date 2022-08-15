Feature:

  Scenario:
    * def response = ['2.16%','1.34%','1.32%']
    * def cleaned = response.map(x => x.replace('%', '') * 1)
    * match cleaned == [2.16, 1.34, 1.32]

  Scenario:
    * def response = [1.001, 1.011, 1.015]
    * def rounded = response.map(x => x.toFixed(2) * 1)
    * match rounded == [1.00, 1.01, 1.01]