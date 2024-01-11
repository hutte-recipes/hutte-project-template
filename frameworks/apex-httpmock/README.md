# Apex HTTP Mock [![Codacy Badge](https://api.codacy.com/project/badge/Grade/3814b20244d14e3d846ff05dfd3c2e2a)](https://www.codacy.com/app/rsoesemann/apex-httpmock?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=rsoesemann/apex-httpmock&amp;utm_campaign=Badge_Grade)

From https://github.com/rsoesemann/apex-httpmock

Simple library to make HTTP Mocks in Salesforce more readable by

 - using a fluent API
 - removing some of the boilerplate
 
<a href="https://githubsfdeploy.herokuapp.com?owner=rsoesemann&repo=apex-httpmock">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

```java
@IsTest
private class MyApi_Test {

    private static final PersonApi API = new PersonApi();
    private static final Person JOE = new Person('joe');
    private static final Person TIM = new Person('tim');


    @IsTest
    private static void multipleHttpMethods() {

        // Setup
        new HttpMock()
                // different methods
                .get('/v2/person/tim', TIM, 200)
                .post('/v2/person/tim', true, 200)

                // body conditions
                .post('/v2/person/tim#"age":33', true, 200)
                .post('/v2/person/tim#"age":null', false, 200)

                // failures
                .get('/v1/persons', false, 505)
                .get('/v2/persons', new CalloutException())
                
                .mock();


        // Exercise + Verify
        Test.startTest();

        System.assertEquals(true,  API.updatePerson(new Person('tim')) );
        System.assertEquals('tim', API.getPerson('tim').name);

        Test.stopTest();
    }
}
```
