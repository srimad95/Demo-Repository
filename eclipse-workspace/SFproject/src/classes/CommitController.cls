public with sharing class CommitController {
  @AuraEnabled
   public static List<abc_dev__Commit__c> findAll() {
             return [SELECT Id, abc_dev__Date__c, abc_dev__Practice__c, abc_dev__MostLikely__c, abc_dev__Booked__c, abc_dev__Actual__c FROM abc_dev__Commit__c ORDER BY abc_dev__Date__c ];
   }
    
  


}