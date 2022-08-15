Feature:

  Scenario:
    * print 'test 1'

  Scenario Outline:
    * print 'test' + test

    Examples:
      | test |
      | 2    |
      | 3    |