Class lscalese.configcopy.rest.spec Extends %REST.Spec [ ProcedureBlock ]
{

XData OpenAPI [ MimeType = application/json ]
{
{
  "swagger": "2.0",
  "basePath" : "/lscalese/configcopy",
  "schemes" : [
    "http",
    "https"
  ],
  "info":{
    "title":"config-copy api",
    "version":"0.0.1",
    "description":"",
    "contact": {
      "name" : "Lorenzo Scalese",
      "email": "lorenzo.scalese@gmail.com",
      "url": "https://github.com/lscalese/iris-config-copy/"
    },
    "license": {
      "name": "MIT",
      "url": "https://github.com/lscalese/iris-config-copy/blob/master/LICENSE"
    }
  },
  "produces": [
      "application/json",
      "application/xml"
  ],
  "paths": {
    "/": {
      "get": {
        "summary": "Swagger 2.0 specification",
        "operationId":"GetSpec",
        "produces": [
          "application/json"
        ],
        "responses": {
          "200": {
            "description": "OK"
          }
        }
      }
    },
    "/export/sysglobals/": {
      "get": {
        "description": "Copy the node ^%SYS(\"sql\",\"ODBCCONNECTION\") into ^ExportTmp and export it.",
        "operationId":"ExportSysglobals",
        "parameters": [],
        "produces": [
          "application/xml"
        ],
        "responses": {
          "200": {
            "description": "OK"
          }
        }
      }
    },
      "/export/config/": {
          "get": {
              "description": "Export configuration in config-api format : https://github.com/lscalese/iris-config-api .",
              "operationId":"ExportConfig",
              "parameters": [],
              "produces": [
                "application/json"
              ],
              "responses": {
                  "200": {
                      "description": "OK"
                  }
              }
          }
      },
      "/export/tasks/": {
          "get": {
              "description": "Export all users defined tasks in XML format.",
              "operationId":"ExportTasks",
              "parameters": [],
              "produces": [
                "application/xml"
              ],
              "responses": {
                  "200": {
                      "description": "OK"
                  }
              }
          }
      },
      "/export/security/": {
          "get": {
              "description": "Export all security settings in XML format",
              "operationId":"ExportSecurity",
              "parameters": [],
              "produces": [
                "application/xml"
              ],
              "responses": {
                  "200": {
                      "description": "OK"
                  }
              }
          }
      }
    }
}
}

}
