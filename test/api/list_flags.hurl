GET http://localhost:3000/flags
HTTP 200

[Asserts]
jsonpath "$.data.flags" count > 0
jsonpath "$.data.environments" count > 0
