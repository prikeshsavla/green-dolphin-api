POST http://localhost:3000/environments
{
     "environment": {
        "name": "Test {{newUuid}}", 
        "key": "Test_{{newUuid}}"
     }
}
HTTP 201