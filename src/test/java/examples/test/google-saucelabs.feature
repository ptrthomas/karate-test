Feature: sauce labs automation demo

  Background:
    * def sauceLabsBuild = ''
    * def sauceLabsUrl = ''
    * def sauceOptions = { build: '#(sauceLabsBuild)', name: '#(karate.feature.prefixedPath)' }
    * def session = { capabilities: { alwaysMatch: { browserName: 'chrome', browserVersion: 'latest', platformName: 'Windows 11', 'sauce:options': '#(sauceOptions)' } } }
    * configure driver = { type: 'chromedriver', start: false, webDriverSession: '#(session)', webDriverUrl: '#(sauceLabsUrl)' }

  Scenario: try to login to github

    Given driver 'https://github.com/login'
    And input('#login_field', 'XXXX')
    And input('#password', 'world')
    When submit().click("input[name=commit]")
    Then match html('.flash-error') contains 'Incorrect username or password.'    