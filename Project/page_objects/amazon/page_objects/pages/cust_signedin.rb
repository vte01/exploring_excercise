module Amazon
    module PageObjects
        module Pages
	        class TestCustSignedInPage < SitePrism::Page
               #set_url "https://www.amazon.co.uk"
			   puts 'vikram....12345'
			   
			   element :cust_id, '#hud-customer-name'
			   element :search_field, "input[name='field-keywords']"
			   element :search_button, '#nav-search-submit-text'
			  			   
            end
	    end
	end
end
