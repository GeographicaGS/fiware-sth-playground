curl localhost:1026/v1/updateContext -s -S --header 'Content-Type: application/json' --header 'Accept: application/json'  -d '{
    "contextElements": [
        {
            "type": "entGeoTest",
            "isPattern": "false",
            "id": "entGeoTest:da01",
            "attributes": [
            {
                "name": "f",
                "type": "float",
                "value": "12"
            }
            ]
        }
    ],
    "updateAction": "UPDATE"
}'
