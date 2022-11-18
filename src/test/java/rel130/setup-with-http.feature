Feature: setup with http call

@setup
Scenario:
* url 'https://jsonplaceholder.typicode.com'
* path 'users'
* method get

Scenario Outline:
* doc { read: 'user.html' }

Examples:
| karate.setup().response |