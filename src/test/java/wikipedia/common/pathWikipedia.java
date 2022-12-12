package wikipedia.common;


import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class pathWikipedia {
    WebDriver driver;
    public pathWikipedia(WebDriver driver){
        this.driver=driver;
    }
    public void open_google_chrome() {
        System.setProperty("webdriver.chrome.driver","//usr//local//bin//chromedriver");
        this.driver.get("https://www.wikipedia.org/");
        this.driver.manage().window().maximize();
        String currentURL = this.driver.getCurrentUrl();
        Assert.assertEquals("https://www.wikipedia.org/",currentURL);
    }
    public void field_search_on_wikipedia_home() {
        this.driver.findElement(By.xpath("//*[@id=\"searchInput\"]")).click();
    }

    public void fill_keyword(String keywordSearch){
        this.driver.findElement(By.xpath("//*[@id=\"searchInput\"]")).sendKeys(keywordSearch);
        this.driver.findElement(By.xpath("//*[@data-jsl10n=\"search-input-button\"]")).click();
    }
    public void result_CEO_of_spacex(String CEO) throws Throwable {
        this.driver.findElement(By.xpath("//*[contains (@title, \"Founder of SpaceX\")]")).click();
        String CEOofSpacek = this.driver.findElement(By.xpath("//*[contains (@id,\"firstHeading\")]/span")).getText();
        Assert.assertEquals(CEO,CEOofSpacek);
    }
}
