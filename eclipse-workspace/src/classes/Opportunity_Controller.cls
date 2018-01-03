public class Opportunity_Controller {
    
    private ApexPages.StandardController controller {get; set;}
    private Opportunity OpportunityRecordQueried{get;set;}
    public Opportunity OpportunityRecord {get;set;}
 
    public Opportunity_Controller(ApexPages.StandardController controller) {
 
        this.controller = controller;                       
        OpportunityRecord = (Opportunity)controller.getRecord();
        OpportunityRecordQueried = [SELECT Id, IsDeleted, IsPrivate, Description, Name, StageName, Amount, Probability, TotalOpportunityQuantity, CloseDate, Type, NextStep, LeadSource, IsClosed, IsWon, ForecastCategory, ExpectedRevenue, OwnerId, HasOpportunityLineItem, Pricebook2Id, CampaignId FROM Opportunity
                         where id =: OpportunityRecord.Id];
    }
 
    public PageReference cloneOpportunity() {
 
         Savepoint sp = Database.setSavepoint();
         Opportunity OpportunityCloned;
         try {
             OpportunityCloned = OpportunityRecordQueried.clone(false);
             insert OpportunityCloned;
         } catch (Exception e){
            Database.rollback(sp);
            ApexPages.addMessages(e);
            return null;
         }
        return new PageReference('/'+OpportunityCloned.id);
 
    }

}