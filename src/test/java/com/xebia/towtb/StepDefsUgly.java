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

    @Given("^a system with (\\d+) opened transactions$")
    public void a_system_with_opened_transactions(int arg1) throws Throwable {

    }

    @When("^the system restarts$")
    public void the_system_restarts() throws Throwable {

    }

    @Then("^no transactions should be opened$")
    public void no_transactions_should_be_opened() throws Throwable {

    }

    @Given("^the system is configured to accept login \"([^\"]*)\" and password \"([^\"]*)\"$")
    public void the_system_is_configured_to_accept_login_and_password(String arg1, String arg2) throws Throwable {

    }

    @When("^the customer connects to the system with login \"([^\"]*)\" and password \"([^\"]*)\"$")
    public void the_customer_connects_to_the_system_with_login_and_password(String arg1, String arg2) throws Throwable {

    }

    @Then("^the system should accept the connection$")
    public void the_system_should_accept_the_connection() throws Throwable {
        
    }
}
