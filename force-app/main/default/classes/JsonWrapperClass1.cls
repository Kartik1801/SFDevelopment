public with sharing class JsonWrapperClass1 {
    public Integer distance;
    public String emailAddress;
    public String firstName;
    public String headline;
    public String lastName;
    public String pictureUrl;
    public String publicProfileUrl;
    public PositionClass position;
    00D5i000006LLHX!AQQAQPQymiPYFKDcQAhmZnN5LvZUy3Od26xc0LsSp3JlnfIdqPPqDhTxGb5D_6CwEx1dZJDlMdZ2dlx9gOnpK4CU89gVpP5Z
    public class PositionClass{
        // public Integer _total;
        public ValueClass[] values;
    }
    public class ValueClass{
        public Integer id;
        public String title;
        public Boolean isCurrent;
        public CompanyClass company;

    }

    public class CompanyClass{
        public Integer id;
        public String industry;
        public String size;
        public String type;
    }
}
/* 
    {
        "distance": 0,
        "emailAddress": "kd@kd.com",
        "firstName": "Kartik",
        "lastName": "Dhawan",
        "pictureUrl": "https://media.istockphoto.com/vectors/triangle-logo-upside-down-flipped-abstract-prism-geometric-shape-vector-id1279136583?b=1&k=20&m=1279136583&s=612x612&w=0&h=jmXIsQCcOe-23uv2_FH19AeNK6YHiS_mY7arNgPs_Bc=",
        "positions":{
            "_total": 1,
            "values":[
                {
                    "company": {
                            "id": 8712914,
                            "industry": "IT",
                            "size": "400+",
                            "ticker": "TLA",
                            "type": "Public Domain"
                        },
                    "id":8510511519,
                    "isCurrent": true,
                    location: {},
                    title: "Engineering Department"
                },
                {
                    "company": {
                            "id": 8712914,
                            "industry": "IT",
                            "size": "400+",
                            "ticker": "TLA",
                            "type": "Public Domain"
                        },
                    "id":8510511519,
                    "isCurrent": true,
                    "location": {},
                    "title": "Engineering Department"
                }
            ]
        }
    }
*/
