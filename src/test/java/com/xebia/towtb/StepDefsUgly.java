package com.xebia.towtb;

import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefsUgly {
    @Given("^a request for a price defined by \"([^\"]*)\"$")
    public void a_request_for_a_price_defined_by(String jsonFileLocation) throws Throwable {

    }

    @When("^the customer sends the request defined by:$")
    public void the_customer_sends_the_request_defined_by(DataTable fields) throws Throwable {

    }

    @Then("^the pricer should receive a request defined by:$")
    public void the_pricer_should_receive_a_request_defined_by(DataTable fields) throws Throwable {

    }

    @Given("^the pricer received a price request defined by:$")
    public void the_pricer_received_a_price_request_defined_by(DataTable fields) throws Throwable {

    }

    @When("^the pricer sends an acknowledgement defined by:$")
    public void the_pricer_sends_an_acknowledgement_defined_by(DataTable fields) throws Throwable {

    }

    @Then("^the customer should receive a acknowledgement defined by:$")
    public void the_customer_should_receive_a_acknowledgement_defined_by(DataTable fields) throws Throwable {

    }

    @Given("^the pricer sent an acknowledgement defined by:$")
    public void the_pricer_sent_an_acknowledgement_defined_by(DataTable fields) throws Throwable {

    }

    @When("^the pricer sent a price defined by:$")
    public void the_pricer_sent_a_price_defined_by(DataTable fields) throws Throwable {

    }

    @Then("^the customer should receive the price defined by:$")
    public void the_customer_should_receive_the_price_defined_by(DataTable fields) throws Throwable {

    }
}