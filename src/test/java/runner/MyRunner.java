package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
	 features = "src/test/resources",
        glue = {"steps"},
        plugin = { "html:target/cucumber-reports.html"},
        monochrome = false,
        dryRun = false
        
        
)
public class MyRunner extends AbstractTestNGCucumberTests {

}
