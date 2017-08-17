require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'site_prism'


Capybara.app_host = 'https://www.amazon.co.uk'

Dir[File.dirname(__FILE__) + '/../../page_objects/*.rb'].each { |file|
  require file
}

Capybara.run_server = false
#Setting the default driver as Selenium, Selenium 3 is chosen
Capybara.default_driver = :selenium
#Setting the default selector as css
Capybara.default_selector = :css
 
#Syncronization related settings
module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end
World(Capybara::DSL, Helpers)