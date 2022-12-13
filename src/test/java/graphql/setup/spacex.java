package graphql.setup;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;

import static io.restassured.RestAssured.given;

public class spacex {
    private static Response response;
        String query = "{\n" +
            "  \"query\": \"{\\n  company {\\n    ceo\\n  }\\n}\\n\",\n" +
            "  \"variables\": null\n" +
            "}";
    @When("^setting \"(.*?)\" API spacex$")
    public void setting_API_spacex(String URL){
        RestAssured.baseURI = URL;
    }
    @When("^set body query and contentType \"(.*?)\" and \"(.*?)\"$")
    public void set_body_query_and_contentType_and(String type, String path) throws Throwable {
        response = given().log().all()
                    .contentType(type)
                    .body(query)
                        .when().log().all()
                            .post(path)
                                .then().log().all()
                                    .assertThat()
                                    .statusCode(200)
                                    .extract().response();
    }
    @Then("^Expected result (\\d+) and body \"(.*?)\" create user$")
    public void expected_result_and_body_create_user(int statusCode, String data){
        int statusCodeResponse = response.statusCode();
        String bodyResponse = String.valueOf(response.body().asString());
        Assert.assertEquals(statusCode,statusCodeResponse);
        Assert.assertTrue(bodyResponse.contains(data));
    }

}
