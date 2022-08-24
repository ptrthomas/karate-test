Feature:

Scenario:
    * def foo = {}
    # * def val = 'hello'
    * def val = null
    * set foo
    | path    | value |
    | bar.baz | val   |

    * print foo