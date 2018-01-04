public class dummy {

    @AuraEnabled 
    public List<BotField> fields { get;set; }
    
    public dummy (List<BotField> fields) {
        this.fields = fields;
    }

}