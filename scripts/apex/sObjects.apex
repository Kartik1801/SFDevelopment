public class sObjectDemo{
    sObjectDemo(String name, Integer noOfEmployees){
        Account a = new Account(Name = name, NumberOfEmployees = noOfEmployees);
        System.debug(a);
    }
}
sObjectDemo s = new sObjectDemo('kartik', 600);