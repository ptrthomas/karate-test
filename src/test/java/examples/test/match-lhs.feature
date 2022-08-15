Feature:

  Scenario:
    * def myXml = <testing>123</testing>
    * match myXml /testing == '123'

  Scenario:
    * def test = { testing: '123' }
    * match test $.testing == '123'

