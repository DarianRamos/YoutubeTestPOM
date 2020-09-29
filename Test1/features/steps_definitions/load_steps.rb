require 'selenium-webdriver'
require 'net/http'

driver = Selenium::WebDriver.for :chrome
url = 'https://www.youtube.com/'

Given('I try load youtube page in Maximize window validation') do
  log('Start> I try load youtube page in Maximize window validation')
  begin
    response = Net::HTTP.get_response('youtube.com', '/')
    log(response.code)
    driver.manage.window.maximize
    driver.navigate.to url
  ensure
    log('done')
  end
end


When('Logo loads correctly') do
  log('Start> Logo loads correctly')
  begin
    element_logo = driver.find_element(:id, 'logo-icon-container')
    result = log(element_logo.enabled?)
    expect(true).to eq(result[0])
  ensure
   log('done')
  end
end
When('Search input loads correctly') do
  log('Start> Search input load correctly')
  begin
    form = driver.find_element(:id, 'search-form')
    element_input = form.find_element(:id, 'search')
    result = log(element_input.enabled?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
When('Search button loads correctly') do
  log('Start> Search button loads correctly')
  begin
    form = driver.find_element(:id, 'search-form')
    element_button = form.find_element(:id, 'search-icon-legacy')
    result = log(element_button.enabled?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
When('Suggested videos loads correctly') do
  log('Start> Suggested videos loads correctly')
  begin
    element_suggested = driver.find_element(:id, 'content')
    result = log(element_suggested.enabled?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
When('Menu loads correctly') do
  log('Start> Menu loads correctly')
  begin
    element_menu = driver.find_element(:id, 'sections')
    result = log(element_menu.enabled?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end


Then('Logo displayed correctly') do
  log('Start> Logo displayed correctly')
  begin
    element_logo = driver.find_element(:id, 'logo-icon-container')
    result = log(element_logo.displayed?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
Then('Search input displayed correctly') do
  log('Start> Search input displayed correctly')
  begin
    form = driver.find_element(:id, 'search-form')
    element_input = form.find_element(:id, 'search')
    result = log(element_input.displayed?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
Then('Search button displayed correctly') do
  log('Start> Search button displayed correctly')
  begin
    form = driver.find_element(:id, 'search-form')
    element_button = form.find_element(:id, 'search-icon-legacy')
    result = log(element_button.displayed?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
Then('Suggested videos displayed correctly') do
  log('Start> Suggested videos displayed correctly')
  begin
    element_suggested = driver.find_element(:id, 'content')
    result = log(element_suggested.displayed?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end
Then('Menu displayed correctly') do
  log('Start> Menu displayed correctly')
  begin
    element_menu = driver.find_element(:id, 'sections')
    result = log(element_menu.displayed?)
    expect(true).to eq(result[0])
  ensure
    log('done')
  end
end


