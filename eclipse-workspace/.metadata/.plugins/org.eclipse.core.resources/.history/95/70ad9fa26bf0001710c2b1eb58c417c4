public class EmailMissionSpecialist {
    
    
    public void sendMail(String address,String subject,String body){
        
        Messaging.singleEmailMessage mail=new Messaging.singleEmailMessage();
        String[] toAddresses=new String[] {address};
            mail.setToAddresses(toAddresses);
        	mail.setSubject(subject);
        	mail.setPlainTextBody(body);
        
        
        Messaging.SendEmailResult[] results=Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
        
    //    inspectResults(results);
   
        
    }

}