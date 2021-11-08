package steps;

import java.util.Date;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import io.cucumber.java.After;
import io.cucumber.java.Scenario;

public class Hooks extends BaseClass{

	@After
	public void attachScreenShot(Scenario scenario) throws InterruptedException {
	    if (scenario.isFailed()) {
	            final byte[] screenshot = ((TakesScreenshot) driver)
	                        .getScreenshotAs(OutputType.BYTES);
	            long date = new Date().getTime();
	            scenario.attach(screenshot, "image/png", String.valueOf(date)); //stick it in the report
	    }
	    Thread.sleep(3000);
	}
}
