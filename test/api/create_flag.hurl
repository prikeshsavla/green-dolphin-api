POST http://localhost:3000/flags
{
     "flag": {
        "name": "Test {{newUuid}}", 
        "key": "Test_{{newUuid}}", 
        "description": "Show Contact info", 
        "default_value": false 
     }
}
HTTP 201