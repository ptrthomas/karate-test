Feature:

  Scenario:
    * def response =
    """
    [
        {
            "id": "id_number_1",
            "name": "name"
        },
        {
            "id": "id_number_2",
            "name": "name 2",
            "nestedThing": {
                "id": "another_id",
                "name": "object2_name"
            }
        },
        {
            "id": "id_number_3",
            "name": "name 3"
        }
    ]
    """
    * def temp = karate.filter(response, function(x){ return !x.nestedThing })
    * def ids = karate.map(temp, function(x){ return x.id })
    * match ids == ['id_number_1', 'id_number_3']

   Scenario:
     * def response =
    """
     {
        "id": "yi28634b-04xd-11gy-89d5-0a3100471f45",
        "name": null,
        "source": null,
        "createTime": "2022-07-16T02:09:59.523-0400",
        "refId": null,
        "sourceDefinitions": {
            "Lorem_Ipsum:1:xc2abd3d-04yd-11ud-89b5-0a3199471f45": {
                "id": "Lorem_Ipsum:1:xc2abd3d-04yd-11ud-89b5-0a3199471f45",
                "key": "OIF_Test_15JUL22",
                "category": "definitions",
                "description": null,
                "name": "Lorem_Ipsum",
                "version": "1",
                "resource": "some_file.xyz"

            }
        }
      }
    """
     * def id = $response.sourceDefinitions[*].id
     * print id
