Feature:

  Scenario:
    * def response =
    """
    {
      "results":[
        {
          "id": "id-1",
          "data": "{\"name\": \"Adam\", \"surname\": \"Parker\"}"
        },
        {
          "id": "id-2",
          "data": "{\"name\": \"Adam\", \"surname\": \"Parker-Bates\"}"
        },
        {
          "id": "id-3",
          "data": "{\"name\": \"Adam Robert\", \"surname\": \"Parker\"}"
        }
      ]
    }
    """
    * def names = response.results.map(x => karate.fromString(x.data))
    * match names contains { name: 'Adam', surname: 'Parker' }