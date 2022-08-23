Feature:

Scenario:
* def actualList = ["CABLE_MODEM","SET_TOP_BOX","SET_TOP_BOX","CABLE_MODEM","CBE"]
* def expectedList = ["CABLE_CARD","SET_TOP_BOX","CABLE_MODEM","MTA","OTHER","IP_SET_TOP_BOX"]

* def valid = function(x){ return expectedList.includes(x) }
* match each actualList == '#? valid(_)'
