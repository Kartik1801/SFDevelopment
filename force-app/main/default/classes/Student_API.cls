@RestResource( urlMapping = '/student' )
global class Student_API {
    
    @HttpPost
    global static string myMethod(){

        RestRequest req = RestContext.request;
        System.debug(req);
        String str = req.requestBody.toString();
        System.debug(str);
        
        return 'Test';
    }
    @HttpGet
    global static List<Map<String, String>> getRecord(){
        RestRequest req = RestContext.request;
        System.debug(req);
        Map<String, String > params = req.params;
        System.debug(params);
        List<Map<String, String>> finalResult = new List<Map<String, String>>();

        if(params.containsKey('id')){
            Student__c student = [ SELECT Student_Name__c, Student_Phone_Number__c, Courses__c, Email__c, id 
                                   FROM Student__c WHERE id = :params.get('id') LIMIT 1];
            Map<String,String> result = new Map<String,String>();
            result.put('Name', student.Student_Name__c);
            result.put('Phone', student.Student_Phone_Number__c);
            result.put('Email', student.Email__c);
            result.put('Course', student.Courses__c);
            result.put('ID', student.id);
            finalResult.add(result);
        }
        else if(params.containsKey('email')){
            List<Student__c> studentList = [ SELECT Student_Name__c, Student_Phone_Number__c, Courses__c, Email__c, id
            FROM Student__c WHERE email__c=:params.get('email')];
            
            for(Student__c student: studentList){
                Map<String,String> result = new Map<String,String>();
                result.put('Name', student.Student_Name__c);
                result.put('Phone', student.Student_Phone_Number__c);
                result.put('Email', student.Email__c);
                result.put('Course', student.Courses__c);
                result.put('ID', student.id);
                finalResult.add(result);
            }
        }
        return finalResult;
    }
}
