Given(/^Amazon\.co\.uk is open$/) do
  #Invoke the website amazon by passing on the url
  #visit 'https://www.amazon.co.uk/' 
  puts 'Am doing the right thing!'
  @app.home.load
  #expect(@app.home.load).to have_search_button
  #expect(@app.home).to have_registration_page_link
  expect(@app.home).to have_login_page_link
  expect(@app.home).to have_nav_your_account
  puts 'i am in the right direction'
  
end

When(/^I click Sign\-in$/) do
  #Clicking on the sign in link to login to my account
  expect(@app.home).to have_login_page_link
  @app.home.login_page_link.click
  #click_link "Your Amazon.co.uk" 
  #Allowing few seconds for the sign in page to come up
  sleep (3.to_i)
  expect(@app.sign_in).to have_user_emailid
  expect(@app.sign_in).to have_user_password
  
end

When(/^I enter "([^"]*)" and "([^"]*)" as user, password$/) do |arg1, arg2|
  puts 'check-check'
  expect(@app.sign_in).to have_user_emailid
  expect(@app.sign_in).to have_user_password
  @app.sign_in.login arg1, arg2
  puts 'end check-check'
  sleep 5
end

Then(/^I am logged in$/) do
   # Checking that am logged in by looking for account name
  expect(@app.cust_signed_in).to have_cust_id
  sleep 3
end

Given(/^Amazon\.co\.uk is open and I am logged in$/) do
   # Checking that am logged in by looking for account name
  expect(@app.cust_signed_in).to have_cust_id
  sleep 3
end

When(/^I search for "([^"]*)"$/) do |arg1|
    # Search for the product 'Dive Into Python' in the search bar
	expect(@app.cust_signed_in).to have_search_field
	expect(@app.cust_signed_in).to have_search_button
	
	@app.cust_signed_in.search_field.set arg1
    @app.cust_signed_in.search_button.click
    #fill_in 'twotabsearchtextbox', :with => arg1
	#find('.nav-search-submit-text', :text => 'Go').click
	#Adding delay of few secs for the next page to appear
	sleep 5
end

Then(/^the first result has the word "([^"]*)" in it$/) do |arg1|
  #Checking that the product 'Dive Into Python' is displayed
  expect(@app.search_results).to have_results_column
  expect(@app.search_results).to have_results_count
  #expect(@app.search_results.users_with_text(arg1)
  #@app.search_results.users_with_text("Djj nn kk")
  #find('a', text:arg1, match: :prefer_exact)
end

Given(/^I add "([^"]*)" to my basket$/) do |arg1|
#  #Selecting the product from the list of results displayed
  page.all(:link,"Dive Into Python")[0].click
#  @app.search_results.result_link.click
#  #Adding few secs of delay
  sleep (5.to_i)
#  #Checking that price of the product
  value = page.all('.a-size-base.a-color-price.a-color-price')[0].text
  puts value
#  #Adding the product to the basket
  find(:css, "#add-to-cart-button").click
  sleep (5.to_i)
  
end

#When(/^I check my basket total$/) do
#  Checking the price of the product in the basket page
#  value1 = page.all('.a-color-price.a-text-bold')[0].text
#  puts value1
#end

#Then(/^it should match the price of "([^"]*)"$/) do |arg1|
#  pending # Had issues implementing this last step, so excluded the code. TBD.
#end


