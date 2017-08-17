module Amazon
    module PageObjects
        module Pages
	        class TestSignInPage < SitePrism::Page
               #set_url "https://www.amazon.co.uk"
			   puts 'vikram....123'
			   
			   element :user_emailid, '#ap_email'
			   element :user_password, '#ap_password'
			   element :signin_btn, '#signInSubmit'
			   
			   def login (name,pwd)
			      puts 'am in login func'
                  user_emailid.set name
                  user_password.set pwd
                  signin_btn.click
               end
			   
            end
	    end
	end
end
