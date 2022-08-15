Feature:

  Scenario:
    * def myUrl = 'https://httpbin.org/anything'
    * def args = ['curl']
    * args.push(myUrl)
    * def result = karate.exec({ args: args }) 
