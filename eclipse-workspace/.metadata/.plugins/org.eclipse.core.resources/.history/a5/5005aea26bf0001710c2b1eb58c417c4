global class ExampleBatchClass implements Database.Batchable<sObject>
{ 
    global String query='select OwnerId, Name from Account';
    global ExampleBatchClass(){
         }
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute( Database.BatchableContext BC, List<Account> acclist){
        for(Account acc : acclist)
        {
            acc.Name = acc.Name+'sri';
            update acclist;
          }
    }
    
    global void finish(Database.BatchableContext BC){
        }
    
}