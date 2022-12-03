Feature:

  Scenario: first scenario
    * def response =
    """
    { "results": [
        { "name": "Sample1", "email": "sample1@text.com", "id": "U-123" },
        { "name": "Sample2", "email": "sample2@text.com", "id": "U-456" },
        { "name": "Sample3", "email": "sample3@text.com", "id": "U-789" }
      ]
    }
    """
    * def id = response.results.find(x => x.name == 'Sample2').id
    * match id == 'U-456'

  Scenario: second scenario
    * def response =
    """
    {
    "firstName": "John",
    "lastName": "doe",
    "age": 26,
    "address": {
        "streetAddress": "naist street",
        "city": "Nara",
        "postalCode": "630-0192"
    },
    "phoneNumbers": [
        {
            "type": "iPhone",
            "number": "0123-4567-8888"
        },
        {
            "type": "home",
            "number": "0123-4567-8910"
        }
    ]}
    """

    * def found = response.phoneNumbers.find(x => x.type == 'home').number
    * match found == '0123-4567-8910'