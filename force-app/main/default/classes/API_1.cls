public with sharing class API_1 {
    @future(callout = true)
    public static void sendMessage(String phoneNumber, String stdName){
        String endpoint = 'https://api.twilio.com/2010-04-01/Accounts/ACd1cf3585ebb1c95bdb2cabf4972ec903/Messages.json';
        String authKey = 'ACd1cf3585ebb1c95bdb2cabf4972ec903:1f89cdb3c395c82567337f213cc8879c';
        String method = 'POST';
        Blob b = Blob.valueOf(authKey);
        String token = EncodingUtil.base64Encode(b);
        String body = 'From=' + EncodingUtil.urlEncode('+18336971126', 'UTF-8') +
                      '&To=' + EncodingUtil.urlEncode('+91' + phoneNumber, 'UTF-8') + '&Body=' + 
                       EncodingUtil.urlEncode('Hi there ' + stdName +  ', this is from your Apex Code.', 'UTF-8');

        Http httpManager = new Http();
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        
        req.setEndpoint(endpoint);
        req.setMethod(method);
        req.setHeader('Authorization', 'Basic ' + token );
        req.setBody(body);  

        res = httpManager.send(req);

        System.debug(res.getBody());
    }
}
