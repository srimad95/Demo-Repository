public class ContactAndLeadSearch {
    public Static List<List< SObject>> searchContactsAndLeads(String Smith){
        
        List<List<sObject>> searchList = [FIND 'Smith' IN ALL FIELDS 
                   RETURNING Contact(LastName),Lead(LastName)];

      return searchList;  
    }
}