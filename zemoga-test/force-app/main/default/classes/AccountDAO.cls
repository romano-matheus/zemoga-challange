public with sharing class AccountDAO {
   
    public static List<Account> getAccountsByUserId(Id userId){
        return[SELECT
                    Id, 
                    Name
                FROM
                    Account
                WHERE
                    OwnerId = :userId
                LIMIT 5
        ];
    }
}