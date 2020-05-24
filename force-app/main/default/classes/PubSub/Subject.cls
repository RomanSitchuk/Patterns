public with sharing class Subject{
    private static final Subject instance = new Subject();

    private Subject() {
    }

    public static Subject getInstance() {
        return instance;
    }

    public void subscribe(String topicId, String subscriberEmail){
        List<Topic__c> newTopics = new List<Topic__c>();
        List<Topic__c> topics = [SELECT Topic_Id__c, 
                                    (SELECT Email__c FROM Subscribers__r) 
                                    FROM Topic__c 
                                    WHERE Topic_Id__c = :topicId];
        if (topics.size() == 0) {
            Topic__c newTopic = new Topic__c(
                Topic_Id__c = topicId
            );
            insert newTopic;
            insert new Subscriber__c(
                Email__c = subscriberEmail,
                Topic__c = newTopic.Id
            );
        } else {
            List<Subscriber__c> subscribers = new List<Subscriber__c>();
            for (Topic__c topic : topics) {
                subscribers.add(new Subscriber__c(
                    Email__c = subscriberEmail,
                    Topic__c = topic.Id
                    )
                );
            }
            insert subscribers;
        } 
     }

    public void unSubscribe(String topicId, String subscriberEmail) {
        List<Subscriber__c> subscribers = [SELECT Id 
                                            FROM Subscriber__c 
                                            WHERE Topic__c = :topicId 
                                            AND Email__c = :subscriberEmail];
        delete subscribers;
    }

    public void notifySubscribers(List<String> topicIds) {
        List<String> emails = new List<String>();

        for (Subscriber__c subscriber : [Select Email__c 
                                            FROM Subscriber__c 
                                            WHERE Topic__r.Topic_Id__c IN :topicIds]) {
            emails.add(subscriber.Email__c);

        }
        // Logic to select emails by topic from database and send notification
        System.debug('Notify Subscribers: ' + emails + ' on topics: ' + topicIds);
    }
}

