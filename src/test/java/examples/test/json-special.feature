Feature:

  Scenario:
    * def response =
    """
    {
      "dd:PrepareMasterBookingRS": {
        "@Version": "1.27",
        "@TransactionID": "123456798",
        "dd:Success": {
        },
        "dd:AvailabilityResponse": {
          "dd:RoomStays": {
            "dd:RoomStay": [
              {
                "@RPH": "1",
                "dd:RoomTypes": {
                  "dd:RoomType": [
                    {
                      "@NumberOfUnits": "18",
                      "@RoomTypeCode": "R1123",
                      "dd:RoomDescription": {
                        "@Name": "C12N - vvvvvv 1-2 pers. 1 foo"
                      }
                    }
                  ]
                }
              }
            ]
          }
        }
      }
    }
    """
    * def roomstay = $response..['dd:RoomStay']
    * print roomstay[0]