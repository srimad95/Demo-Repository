global class CloneAccount
{
    webservice static void cloneAccount(Id acctId) // you can pass parameters
    {
       List<Contact> cont = new List<Contact>();
       Account acc = [SELECT ID, Name FROM Account WHERE Id = : acctId];
       Account accCopy = acc.clone(false,true);
       accCopy.Name = acc.Name +'-'+system.today();
       insert accCopy;

       //cloning Related contact Records
       for(Contact c : [SELECT Id, LastName, AccountId FROM Contact WHERE AccountId = : acc.Id]){
         Contact conCopy = c.clone(false,true);
         conCopy.AccountId = accCopy.Id;
         cont.add(conCopy);
        }
       insert cont;
    }
}