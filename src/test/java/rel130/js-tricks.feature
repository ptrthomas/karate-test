Feature: JS examples

Scenario: json transform
* def before = [1, 2, 3]
* def after = before.map(x => x * x)
* print after

Scenario: json filter
* def data = [{ a: 1 }, { a: 2 }, { a: 3 }, { a: 4 }]
* def even = data.filter(x => x.a % 2 === 0)
* print even
