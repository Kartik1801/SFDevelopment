public class DML5{
    DML5()
    { // Program to undelete all those deleted contact that got deleted today 
        List<Contact> deletedContacts = [ SELECT Name FROM Contact   WHERE isDeleted = true AND LastModifiedDate = TODAY ALL ROWS ];
        undelete deletedContacts;
    }
}

DML5 d = new DML5();