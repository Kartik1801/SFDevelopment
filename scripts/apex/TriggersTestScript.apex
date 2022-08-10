List<Account> accList = [ SELECT id FROM Account WHERE Name LIKE '_MergeTest%' ];
Database.merge(accList[0], accList[1]);