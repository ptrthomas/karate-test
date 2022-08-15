Feature:

  Scenario:
    * print 'test 1'

  @one
  Scenario Outline:
    * print 'test' + <test>

    Examples:
      | test |
      | 2    |
      | 3    |