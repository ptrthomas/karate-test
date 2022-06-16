Feature:

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario:
    # GET an existing user
    * path 'users/1'
    * method get
    * match response contains { id: 1, name: 'Leanne Graham' }

    # GET existing users
    * path 'users'
    * param _limit = 5
    * method get
    * match response == '#[]'
    * match $[0].id == 1
    * match $[0]..lat == ['-37.3159']
    * match $..id == '#[5]'
    * def emails = $[*].email

    # POST with valid params to create a new user
    * path 'users'
    * request { id: 11, name: 'Gil Alexander' }
    * method post
    * status 201
    * karate.write(response, 'new_user.demo.json')

  Scenario Outline: PUT with valid params to update the existing user
    * path 'users', 2
    * request body
    * method put
    * match response contains body

    Examples:
      | body!                        |
      | { isCoding: true }           |
      | { sleep: null }              |
      | { pockets: '', money: 0.02 } |

  Scenario: PATCH with valid params, reusing response properties as a new payload
    * path 'users', 3
    * method get
    * match response.name == 'Clementine Bauch'
    * path 'users', 4
    * request { name: '#(response.name)' }
    * method patch
    * match response.name == 'Clementine Bauch'

    * def body = { name: 'Julie Langford' }
    * path 'users', 5
    * request body
    * method patch
    * match response contains body

  Scenario: DELETE the existing successfully
    * path 'users', 6
    * method delete
    * match [200, 202, 204] contains responseStatus
