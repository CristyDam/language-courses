trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
    if (Trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        // Call a utility method from another class
        EmailManager.sendMail('cristy_fdez@hotmail.com', 'Trailhead Org Development Model', 
                    recordCount + ' course(s) were inserted.');
    }
    else if (Trigger.isDelete) {
        // Process after delete
    }
}