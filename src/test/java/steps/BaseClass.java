package steps;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class BaseClass {

	public static WebDriver driver;
	
	public void initBrowser(String browserName) {
		
		if (browserName.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "lib/chromedriver.exe");
			driver = new ChromeDriver();
		} else {
			System.setProperty("webdriver.gecko.driver", "lib/geckodriver.exe");
			driver = new FirefoxDriver();
		};
	}
	
	public void maximiseBrowser() {
		driver.manage().window().maximize();
	}
	
	public void navigateToUrl() {
		driver.get("https://www.saucedemo.com/");
	}
}
