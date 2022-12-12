Feature:

Scenario:
* def response =
"""
{
  dynamicKey1: {
    fixedKey: 'fixedValue1',
    dataKey: 'dataValue2'
  },
  dynamicKey2: {
    fixedKey: 'fixedValue2',
    dataKey: 'dataValue2'
  }
}
"""
* def keys = []
* def fun = function(k, v){ if (v.fixedKey == 'fixedValue2') keys.push(k) }
* karate.forEach(response, fun)
* match keys == ['dynamicKey2']