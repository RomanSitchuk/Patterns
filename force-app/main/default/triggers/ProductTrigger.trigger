trigger ProductTrigger on Product2 (after update) {
    if (Trigger.isAfter) {
        if (Trigger.isUpdate) {
            ProductHandler.sendNotifications(Trigger.new, Trigger.oldMap);
        }
    }
}