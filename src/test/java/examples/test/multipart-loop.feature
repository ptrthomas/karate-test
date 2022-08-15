Feature:

  Scenario:
    * def data = ['one', 'two']

    * url 'https://httpbin.org/anything'
    * def body = {}
    * data.forEach(x => body[x] = { read: x + '.txt'})
    * multipart files body
    * method post

  Scenario:
    * def data = ['one', 'two']

    * url 'https://httpbin.org/anything'
    * def body = {}
    * data.forEach(x => body[x] = 'data-' + x)
    * body['x-amz-meta-filename'] = 'sample-e2e.jpg'
    * body['x-amz-meta-description'] = 'Test Image'
    * multipart fields body
    * method post