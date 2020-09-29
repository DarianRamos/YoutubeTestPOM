require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
url = 'https://www.youtube.com/'

Given('I open YT and maximize the window') do
  log('Start> I open YT and maximize the window')
  begin
    driver.manage.window.maximize
    driver.navigate.to url
  ensure
    log('done')
  end
end

When('I write a keyword in input field') do
  log('Start> I write a keyword in input field')
  begin
    form = driver.find_element(:id, 'search-form')
    element_input = form.find_element(:id, 'search')
    driver.action.send_keys(element_input, "testing with cucumber").perform
  ensure
    log('done')
  end
end

Then('I click in search button') do
  log('Start> I click in search button')
  begin
    form = driver.find_element(:id, 'search-form')
    element_button = form.find_element(:id, 'search-icon-legacy')
    element_button.click
  ensure
    log('done')
  end
end

Then('Check result') do
  log('Start> Check result')
  begin
    element_results = driver.find_element(:id, 'dismissable')
    result = log(element_results.displayed?)
  ensure
    log('done')
  end
end