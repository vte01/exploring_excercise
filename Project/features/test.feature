Feature: Shop online at Amazon.co.uk

Scenario: Sign into Amazon.co.uk
 Given Amazon.co.uk is open
 When I click Sign-in
 And I enter "vikcivica@gmail.com" and "ac1v1c" as user, password
 Then I am logged in
 
Scenario: Search for product and verify the first result is related to your product
 Given Amazon.co.uk is open and I am logged in
 When I search for "Dive into Python" 
 Then the first result has the word "Dive Into Python" in it
 
Scenario: verify that the original price of the product matches the price seen in the basket
 Given Amazon.co.uk is open and I am logged in
 And I add "Dive into Python" to my basket
 When I check my basket total
 Then it should match the price of "Dive Into Python"
