trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> listOfTasksToInsert = new List<Task>();
    for(Opportunity opp : Trigger.new){
        if(opp.StageName == 'Closed Won'){
            Task newTask = new Task(); 
            newTask.Subject = 'Follow Up Test Task';
            newTask.WhatId = opp.Id;
            listOfTasksToInsert.add(newTask);
        }
    }
    
    if(listOfTasksToInsert.size() > 0){
        insert listOfTasksToInsert;
    }
}