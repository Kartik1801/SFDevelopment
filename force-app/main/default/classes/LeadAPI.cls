@RestResource( urlmapping = '/lead')
global with sharing class LeadAPI {
    @HttpPost
    global static string createLead(){
        RestRequest req = RestContext.request;
        System.debug(req);
        System.debug('Body(Raw): ' + req.requestBody);
        System.debug('Resource path: ' + req.resourcePath);
        System.debug('Headers: ' + req.headers);
        System.debug('HttpMethods: ' + req.httpMethod);
        System.debug('Params: ' + req.params);
        System.debug('Request Uri: ' + req.requestURI);
        System.debug('Remote Address: ' + req.remoteAddress);
        String str = req.requestBody.toString();
        Map<String, Object> reqMap = (Map<String,Object>) JSON.deserializeUntyped(str);
        System.debug('Body(Strinified): '+ str);
        System.debug('Body(JSON deserialized): ' + reqMap);
        Lead l = new Lead(
                          firstName = (String)reqMap.get('firstName'), 
                          lastName = (String)reqMap.get('lastName'),
                          company = (String)reqMap.get('company'),
                          MobilePhone = (String)reqMap.get('phone')
                         );
                         
        Database.SaveResult result = Database.insert(l);
        if (result.isSuccess()){
            return 'Record created Successfully: ' + result.getId();
        }
        return 'Error: ' + result.getErrors();
    }
}
