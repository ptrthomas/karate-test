Feature:

Scenario:
* def response = [{ id: 'hello', password: 'world'}]
* def bar = 'hello'
* def result = karate.jsonPath(response, "$[?(@.id == '" + bar + "')].password")[0]
* print result

Scenario:
* def cat = 
"""
{
    name: 'Billie',
    kittens: [
    { id: 23, name: 'Bob' },
    { id: 42, name: 'Wild' }
    ]
}
"""
# find single kitten where id == 23
* def bob = get[0] cat.kittens[?(@.id==23)]
* match bob.name == 'Bob'

Scenario:
* url 'https://httpbin.org/anything'
* request { myKey: 'myValue' }
* method post
* status 200
* match response contains deep { json: { myKey: 'myValue' } }

* path response.json.myKey
* method get
* status 200
