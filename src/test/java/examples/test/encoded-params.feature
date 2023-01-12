Feature:

Scenario:
* url 'https://httpbin.org/anything'
* param id = 60
* param filters[start_date] = 'Fri Nov 18 2022 10:14:59 GMT-0300'
* param filters[end_date] = 'Sat Nov 19 2022 23:59:59 GMT-0300'
* method get

Scenario:
* url 'https://httpbin.org/anything'
* param $search = '"body:\'979f13ea-5c87-45e3-98e2-7243d321b238\'"'
* method get


    
