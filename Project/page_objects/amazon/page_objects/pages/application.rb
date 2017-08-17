module Amazon
  module PageObjects
    class Application
      def initialize
        @pages = {}
      end

      def home
        @pages[:home] ||= Amazon::PageObjects::Pages::TestHomePage.new
      end

      def sign_in
        @pages[:sign_in] ||= Amazon::PageObjects::Pages::TestSignInPage.new
      end
	  
	  def cust_signed_in
        @pages[:cust_signed_in] ||= Amazon::PageObjects::Pages::TestCustSignedInPage.new
      end
	  
	  def search_results
        @pages[:search_results] ||= Amazon::PageObjects::Pages::TestSearchResultsPage.new
      end

    end
  end
end