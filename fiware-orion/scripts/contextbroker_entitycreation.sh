# creating entity
curl -X POST localhost:1026/v1/updateContext -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{
    "contextElements": [
        {
            "type": "entGeoTest",
            "isPattern": "false",
            "id": "entGeoTest:da01",
            "attributes": [
                {
                    "name": "s",
                    "type": "float",
                    "value": "2.1"
                },
                {
                    "name": "f",
                    "type": "float",
                    "value": "467.9"
                }
            ]
        }
    ],
    "updateAction": "APPEND"
}'

# Query entity created
curl localhost:1026/v1/contextEntities/entGeoTest:da01

curl localhost:1026/v1/contextEntities -s -S --header 'Content-Type: application/json' --header 'Accept: application/json'
