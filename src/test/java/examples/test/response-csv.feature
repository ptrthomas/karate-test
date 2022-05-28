Feature:

  Scenario:
    * url 'https://httpbin.org/post'
    * text body =
    """
    foo,bar
    1,2
    """
    * request body
    * method post

    * def response = response.data
    # you only need this one line to convert a csv response to json
    * csv response = response
    * match response == [{ foo: '1', bar: '2' }]
