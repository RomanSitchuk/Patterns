public with sharing class ProductPublisher implements IPublisher{
    public static void publish(List<String> productIds) {
        Subject.getInstance().notifySubscribers(productIds);
    }
}
