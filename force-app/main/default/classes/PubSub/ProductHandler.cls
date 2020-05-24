public with sharing class ProductHandler {
    public static void sendNotifications(List<Product2> newProducts, Map<Id, Product2> oldProducts) {
        List<String> activatedProducts = new List<String>();
        for (Product2 product : newProducts) {
            if (product.IsActive && oldProducts.get(product.Id).IsActive != product.IsActive) {
                activatedProducts.add(product.Id);
            }
        }
        ProductPublisher.publish(activatedProducts);
    } 
}
