package wikipedia.stepDefinition;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import wikipedia.common.pathWikipedia;

public class wikipedia {
    WebDriver driver = new ChromeDriver();
    pathWikipedia pathWikipedia = new pathWikipedia(driver);
    @Given("^User open google chrome$")
    public void user_open_google_chrome() throws Throwable {
        pathWikipedia.open_google_chrome();
    }
    @Then("^User click field search on wikipedia home$")
    public void user_click_field_search_on_wikipedia_home() throws Throwable {
        pathWikipedia.field_search_on_wikipedia_home();
    }
    @Then("^User fill keyword \"(.*?)\"$")
    public void user_fill_keyword(String keywordSearch) throws Throwable {
        pathWikipedia.fill_keyword(keywordSearch);
    }
    @Then("^Expect result \"(.*?)\" of spacex$")
    public void expect_result_of_spacex(String CEO) throws Throwable {
        pathWikipedia.result_CEO_of_spacex(CEO);
    }

}
