Feature: setup with http call

@setup
Scenario:
* url 'https://jsonplaceholder.typicode.com'
* path 'users'
* method get

Scenario Outline:
* print __row

Examples:
| karate.setup().response |