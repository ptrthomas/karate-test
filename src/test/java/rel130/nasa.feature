Feature: NASA html demo

Scenario:
* url 'https://epic.gsfc.nasa.gov/api'
* path 'natural/date/2015-10-31'
* method get

* doc { read: 'nasa-table.html' }