Feature:

Scenario:
* def response =
"""
{ hello: 'world' }
"""
* match response contains
"""
{ hello: '#string' }
"""

