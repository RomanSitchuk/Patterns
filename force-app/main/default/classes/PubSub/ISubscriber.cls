public interface ISubscriber {
    void subscribe(String topicId, String email);
    void unSubscribe(String topicId, String email);
}
