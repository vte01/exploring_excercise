module Amazon
    module PageObjects
        module Pages
	        class TestSearchResultsPage < SitePrism::Page
               #set_url "https://www.amazon.co.uk"
			   puts 'vikram....12345'
			   
			   element :results_count, '#s-result-count'
			   element :results_column, '#resultsCol'
			   #element :results_list, '#s-results-list-atf'
			   element :result_link, '#result_0 > div:nth-child(1)'
			   elements :users, "ul li"

               def users_with_text(input)
			        puts input
                    check = users.select {|user| user.text == input}
					puts check
               end
			   			  			   
            end
	    end
	end
end
