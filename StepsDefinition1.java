package progs;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;

public class StepsDefinition1 {
	int num=0;
	String result;
	public boolean numbercheck(int num)
	{
		int count=0;
		for(int i=1;i<=num;i++)
		{
			if(num%i==0)
			{
				count++;
			}
		}
		if(count==2)
			return true;
		else
			return false;
	}
	@Given("user inputs an integer {int}")
	public void user_inputs_an_integer(Integer int1) {
	   num=int1;
	}

	@When("user calls numbercheck method")
	public void user_calls_numbercheck_method() {
	    if(numbercheck(num))
	    {
	    	result="True";
	    
	    }
	    else
	    	result="False";
	}


	@Then("user should get output as {string}")
	public void user_should_get_output_as(String string) {
	    Assert.assertEquals(string, result);
	}

}
