Feature:

Scenario Outline:
* url 'https://httpbin.org/anything'
* request __row
* method post
* status 200

Examples:
| [{ a: 1 }, { a: 2 }] |
