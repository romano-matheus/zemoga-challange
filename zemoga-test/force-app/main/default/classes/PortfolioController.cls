public with sharing class PortfolioController {
    
    @AuraEnabled
    public static List<Account> getAccountsByUserId(Id userId){
        return AccountDAO.getAccountsByUserId(userId);
    }
}