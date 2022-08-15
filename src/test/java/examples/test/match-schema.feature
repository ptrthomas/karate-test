Feature:

  Scenario:
    * def response =
    """
    {
        "id": 1,
        "period":
        [
            {
                "startDate": "2022-05-05",
                "endDate": "2022-05-06"
            },
            {
                "startDate": "2022-06-05",
                "endDate": "2022-06-06"
            }
        ]
    }
    """
    * def dateSchema = { startDate: '#string', endDate: '#string' }
    * match response == { id: '#number', period: '#[] dateSchema' }

    Scenario:
      * def inner =  [{ c: 2 }, { d: 3 }]
      * def response = [{ a: 1, b: [{ d: 3 }, { c: 2 }]}]
      * match each response contains { b: '#(^^inner)' }
      * match each response == { a: 1, b: '#(^^inner)' }
      * match response[0] == { a: 1, b: '#(^^inner)' }
      * match response == [{ a: 1, b: '#(^^inner)' }]