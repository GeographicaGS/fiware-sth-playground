curl localhost:1026/v1/subscribeContext -s -S --header 'Content-Type: application/json' --header 'Accept: application/json'  --header "Fiware-Service: orion" --header "Fiware-ServicePath: /" -d '
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
    "reference": "http://fiware-sth-comet:8666/notify",
    "duration": "P1M",
    "notifyConditions": [
        {
            "type": "ONCHANGE",
            "condValues": [
                "s","f"
            ]
        }
    ],
    "throttling": "PT5S"
}'

curl orion.contextBroker.host:1026/v1/subscribeContext -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'Fiware-Service: theService' --header 'Fiware-ServicePath: theServicePath' -d
