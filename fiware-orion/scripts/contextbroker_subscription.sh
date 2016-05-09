curl localhost:1026/v1/subscribeContext -s -S --header 'Content-Type: application/json' --header 'Accept: application/json'  -d '
{
    "entities": [
        {
          "type": "entGeoTest",
          "isPattern": "true",
          "id": ".*"
        }
    ],
    "attributes": [
            "s","f"
    ],
    "reference": "http://accumulator:1028/accumulate",
    "duration": "P1M",
    "notifyConditions": [
        {
            "type": "ONCHANGE",
            "condValues": [
                "s","f"
            ]
        }
    ],
    "throttling": "PT1S"
}'
