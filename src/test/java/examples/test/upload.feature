Feature:

Scenario:
* url 'https://httpbin.org/post'
# just use the same name, and behind the scenes an array of multi-parts will be sent in the request body 
* def first = { name: 'foo', read: 'test.pdf', contentType: 'application/pdf' }
* def second = { name: 'foo', read: 'test.pdf', contentType: 'application/pdf' }
# note how we support an array of files, which can be programmatically built
# here we use enclosed javascript (refer docs) for convenience, note the round-brackets
* multipart files ([ first, second ])
* method post