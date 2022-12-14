package graphql.setup;

import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;

import static io.restassured.RestAssured.given;

public class spacex {
    public ExtentReports extentReports;
    public ExtentTest extentTest;
    private static Response response;
        String query = "{\n" +
            "  \"query\": \"{\\n  company {\\n    ceo\\n  }\\n}\\n\",\n" +
            "  \"variables\": null\n" +
            "}";

    @When("^setting \"(.*?)\" API spacex$")
    public void setting_API_spacex(String URL){
        extentReports = new ExtentReports("/Users/gada-729/Documents/Private folder ririn/Github/wikipedia/reports/testResultAPI.html",true);
        extentTest = extentReports.startTest("Access link API");

        RestAssured.baseURI = URL;

        extentTest.log(LogStatus.PASS,"Success Access to link API");
        extentReports.endTest(extentTest);
        extentReports.flush();
    }
    @When("^set body query and contentType \"(.*?)\" and \"(.*?)\"$")
    public void set_body_query_and_contentType_and(String type, String path) throws Throwable {

        extentTest = extentReports.startTest("Set request API");

        response = given().log().all()
                    .contentType(type)
                    .body(query)
                        .when().log().all()
                            .post(path)
                                .then().log().all()
                                    .assertThat()
                                    .statusCode(200)
                                    .extract().response();

        extentTest.log(LogStatus.PASS,"Success get data API");
        extentReports.endTest(extentTest);
        extentReports.flush();
    }
    @Then("^Expected result (\\d+) and body \"(.*?)\" create user$")
    public void expected_result_and_body_create_user(int statusCode, String data){
        extentTest = extentReports.startTest("Assertion data API");

        int statusCodeResponse = response.statusCode();
        String bodyResponse = String.valueOf(response.body().asString());
        if(bodyResponse.equalsIgnoreCase(data) && statusCodeResponse == statusCode){
            Assert.assertEquals(statusCode,statusCodeResponse);
            Assert.assertTrue(bodyResponse.contains(data));
            extentTest.log(LogStatus.PASS,"Data is match with expectation");
        }else{
            extentTest.log(LogStatus.FAIL, "Data is no match with expected");
        }
        extentReports.endTest(extentTest);
        extentReports.flush();
    }

}
