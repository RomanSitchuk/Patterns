public with sharing class Subscriber implements ISubscriber {
    public void subscribe(String topicId, String email) {
        Subject.getInstance().subscribe(topicId, email);
    }

    public void unSubscribe(String topicId, String email) {
        Subject.getInstance().unSubscribe(topicId, email);
    }

}
