module Amazon
    module PageObjects
        module Pages
	        class TestHomePage < SitePrism::Page
               set_url "https://www.amazon.co.uk"
			   puts 'vikram....'
			   
			   element :login_page_link, '#nav-your-amazon'
			   element :nav_your_account, '#nav-link-yourAccount'
			   
            end
	    end
	end
end
