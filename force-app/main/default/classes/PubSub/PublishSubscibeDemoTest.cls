@isTest
public with sharing class PublishSubscibeDemoTest {
    @isTest
    static void testPublishSubscibe() {
        Product2 product = new Product2(
            Name = 'PublishSubscibeTest',
            isActive = false 
        );
        insert product;

        // simulate subscription on product activation;
        Subscriber subscriber = new Subscriber();
        subscriber.subscribe(product.Id, UserInfo.getUserEmail());

        // simulate publisher action
        product.isActive = true;
        update product;
    }
}
