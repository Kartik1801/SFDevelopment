public with sharing class WrapperJsonDemo {
    public WrapperJsonDemo() {
        String jsonString = '{"distance":0,"emailAddress":"kd@kd.com","firstName":"Kartik","lastName":"Dhawan","pictureUrl":"https://media.istockphoto.com/vectors/triangle-logo-upside-down-flipped-abstract-prism-geometric-shape-vector-id1279136583?b=1&k=20&m=1279136583&s=612x612&w=0&h=jmXIsQCcOe-23uv2_FH19AeNK6YHiS_mY7arNgPs_Bc=","position":{"_total":1,"values":[{"company":{"id":8712,"industry":"IT","size":"400+","ticker":"TLA","type":"Public Domain"},"id":851,"isCurrent":true,"location":{},"title":"Engineering Department"},{"company":{"id":8712914,"industry":"IT","size":"400+","ticker":"TLA","type":"Public Domain"},"id":851019,"isCurrent":true,"location":{},"title":"Engineering Department"}]}}';
        JsonWrapperClass1 jwc = (JsonWrapperClass1)JSON.deserialize(jsonString, JsonWrapperClass1.class);
        System.debug(jwc);
        System.debug(jwc.firstName);
        System.debug(jwc.position);
        System.debug(jwc.position.values);
        System.debug(jwc.position.values[0].title);
        System.debug(jwc.position.values[0].company.industry);
    }
}
