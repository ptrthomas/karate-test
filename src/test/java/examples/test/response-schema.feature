Feature:

  Scenario:
    * def response =
    """
    {
      "channel": "CABLEDOTCOM",
      "creditCustomAttributes": [
        {
            "name": "timezone",
            "value": "EST"
        },
        {
            "name": "lineOfBusinessOrdered",
            "value": "video,hsd"
        }
      ]
    }
    """

    * def expected =
    """
    {
      "channel": "CABLEDOTCOM",
      "creditCustomAttributes": "#array",
    }
    """

    * match response == expected
    * match response.creditCustomAttributes contains only
    """
    [
      {
          "name": "lineOfBusinessOrdered",
          "value": "video,hsd"
      },
      {
          "name": "timezone",
          "value": "EST"
      }
    ]
    """



