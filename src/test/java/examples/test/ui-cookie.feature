Feature:

Scenario:
* driver 'https://github.com'
* def temp = "sessionStorage.setItem('okta-token-storage', 'test')"
* script(temp)
* karate.stop(9000)
