@isTest
private class TestRestrictContactByName {
    static testMethod void  metodoTest()
    {
        List<Contact> listContact= new List<Contact>();
        Contact c1 = new Contact(FirstName='Srinidhi', LastName='Madhyastha');
       Contact c2 = new Contact(FirstName='srinidhi', LastName = 'INVALIDNAME');
        listContact.add(c1);
        listContact.add(c2);

       Test.startTest();        
      // insert listContact;
        try
            {
                insert listContact;
            }
           catch(Exception e)
            {

            }    

       Test.stopTest();
    }

}