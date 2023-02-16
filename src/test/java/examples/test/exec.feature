Feature:

  Scenario:
    * def myUrl = 'https://httpbin.org/anything'
    * def args = ['curl']
    * args.push(myUrl)
    * def result = karate.exec({ args: args }) 

  Scenario: exec working directory
    * def file = karate.toJavaFile('google.feature')
    * def path = file.getPath()
    * print path  
