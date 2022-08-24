@RestResource( urlmapping = '/lead')
global with sharing class LeadAPI {
    @HttpPost
    global static string createLead(){

        RestRequest req = RestContext.request;
        String str = req.requestBody.toString();
        Map<String, Object> reqMap = (Map<String,Object>) JSON.deserializeUntyped(str);
        String endpoint = 'https://api.ipregistry.co/';
        String apiKey = '4cpfz5ejgj5mxtl4';
        String ip = (String)reqMap.get('ip');
        
        Http httpManager = new Http();
        HttpRequest hreq = new HttpRequest();
        HttpResponse hres = new HttpResponse();
  
        hreq.setEndpoint(endpoint + ip );
        hreq.setMethod('GET');
        hreq.setHeader('Authorization','ApiKey ' + apiKey);
        hres = httpManager.send(hreq);

        Map<String , Object> ipres = (Map<String , Object>) JSON.deserializeUntyped(hres.getBody());
        Map<String, Object> location = (Map<String , Object>) ipres.get('location');
        Map<String, Object> region = (Map<String , Object>) location.get('region');
        String ucity = (String) location.get('city');
        String state = (String) region.get('name');
        String code = (String) location.get('postal');
        Lead l = new Lead( firstName = (String)reqMap.get('firstName'), lastName = (String)reqMap.get('lastName'), city = ucity, State = state, PostalCode = code,  
                           company = (String)reqMap.get('company'), MobilePhone = (String)reqMap.get('phone'));
        
        Database.SaveResult result = Database.insert(l,false);
              
        if (result.isSuccess()){
        return 'Record created Successfully: ' + result.getId();
        } 
        return 'Error: ' + result.getErrors();
    }
}

 /* System.debug(ucity);
        System.debug(state);
        System.debug(region);
        System.debug(location);
        System.debug(ipres);
        System.debug(hreq);
        System.debug(hres);
        System.debug(hres.getBody());
        System.debug(req);
        System.debug('Body(Raw): ' + req.requestBody);
        System.debug('Resource path: ' + req.resourcePath);
        System.debug('Headers: ' + req.headers);
        System.debug('HttpMethods: ' + req.httpMethod);
        System.debug('Params: ' + req.params);
        System.debug('Request Uri: ' + req.requestURI);
        System.debug('Remote Address: ' + req.remoteAddress);
        System.debug('Body(Strinified): '+ str);
        System.debug('Body(JSON deserialized): ' + reqMap);
         */ 
