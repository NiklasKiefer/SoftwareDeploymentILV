let appInsights = require("applicationinsights");
let connection_string = "InstrumentationKey=7fdfd2d6-c84d-4790-bc8f-df1ac51e6dcc;IngestionEndpoint=https://germanywestcentral-0.in.applicationinsights.azure.com/;LiveEndpoint=https://germanywestcentral.livediagnostics.monitor.azure.com/";
appInsights.setup(connection_string).start();

console.log("Hello World");