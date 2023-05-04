Feature:

Scenario:
* def data = [{ id: 1 }, { id: 2 }, { id: 3 }]
* def result = call read('@called') data
* def names = result.map(x => x.response.name)
* match names == ['Leanne Graham', 'Ervin Howell', 'Clementine Bauch']

@called @ignore
Scenario:
* url 'https://jsonplaceholder.typicode.com/users'
* path id
* method get