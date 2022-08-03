public class DML3{
    DML3(){
        List<Product2> p = [ Select Name from Product2 ];
        for(Product2 pr : p){
            pr.Name += ' 22';
        }

        p.add(new Product2( Name = 'INTERNET SERVICE FACILITY 22'));
        p.add(new Product2( Name = 'SURVEY FACILITY 22'));
        System.debug(p);
        upsert p;
    }
}

DML3 d = new DML3();
