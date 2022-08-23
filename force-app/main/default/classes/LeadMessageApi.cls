public with sharing class LeadMessageApi {
    @future(callout = true)
    public static void sendMessage(String phoneNumber, String firstName, String lastName, String company){
        String endpoint = 'https://api.twilio.com/2010-04-01/Accounts/ACd1cf3585ebb1c95bdb2cabf4972ec903/Messages.json';
        String authKey = 'ACd1cf3585ebb1c95bdb2cabf4972ec903:0f41eba0069382942bc851048fe407c3';
        String method = 'POST';
        Blob b = Blob.valueOf(authKey);
        String token = EncodingUtil.base64Encode(b);
        String body = 'From=' + EncodingUtil.urlEncode('+18336971126', 'UTF-8') +
                      '&To=' + EncodingUtil.urlEncode('+91' + phoneNumber, 'UTF-8') + '&Body=' + 
                       EncodingUtil.urlEncode('Hi there ' + firstName + ' ' + lastName + ' from ' + company + '\n Thanks for reaching out to us.', 'UTF-8');

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
