package wikipedia.common;


import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class pathWikipedia {
    WebDriver driver;
    public ExtentReports extentReports;
    public ExtentTest extentTest;
    public pathWikipedia(WebDriver driver){
        this.driver=driver;
    }
    public void open_google_chrome() {

        extentReports = new ExtentReports("/Users/gada-729/Documents/Private folder ririn/Github/wikipedia/reports/testResultWEB.html",true);
        extentTest = extentReports.startTest("Open google chrome");

        System.setProperty("webdriver.chrome.driver","//usr//local//bin//chromedriver");
        this.driver.get("https://www.wikipedia.org/");
        this.driver.manage().window().maximize();

        extentTest.log(LogStatus.PASS,"Success open google chrome");

        String currentURL = this.driver.getCurrentUrl();
        if(currentURL.equalsIgnoreCase("https://www.wikipedia.org/")){
            Assert.assertEquals("https://www.wikipedia.org/",currentURL);
            extentTest.log(LogStatus.PASS,"Success direct to wikipedia home page ");
        }else{
            extentTest.log(LogStatus.FAIL,"Fail direct to wikipedia home page ");
        }
        extentReports.endTest(extentTest);
        extentReports.flush();
    }
    public void field_search_on_wikipedia_home() {
        this.driver.findElement(By.xpath("//*[@id=\"searchInput\"]")).click();

    }

    public void fill_keyword(String keywordSearch){
        extentTest = extentReports.startTest("Search on wikipedia");

        this.driver.findElement(By.xpath("//*[@id=\"searchInput\"]")).sendKeys(keywordSearch);
        this.driver.findElement(By.xpath("//*[@data-jsl10n=\"search-input-button\"]")).click();

        extentTest.log(LogStatus.PASS,"Success search on wikipedia");
        extentReports.endTest(extentTest);
        extentReports.flush();
    }
    public void result_CEO_of_spacex(String CEO) throws Throwable {

        extentTest = extentReports.startTest("Result CEO of spaceX");

        this.driver.findElement(By.xpath("//*[contains (@title, \"Founder of SpaceX\")]")).click();
        String CEOofSpacek = this.driver.findElement(By.xpath("//*[contains (@id,\"firstHeading\")]/span")).getText();
        if(CEOofSpacek.contains(CEO)){
            Assert.assertEquals(CEO,CEOofSpacek);
            extentTest.log(LogStatus.PASS,"Expected result CEO of spaceX is match");
        }else {
            extentTest.log(LogStatus.FAIL,"Expected result CEO of spaceX no match");
        }
        extentReports.endTest(extentTest);
        extentReports.flush();

    }
}