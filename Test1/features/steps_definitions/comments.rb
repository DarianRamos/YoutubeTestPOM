require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
url = 'https://www.youtube.com/watch?v=GgnClrx8N2k'

Given('I open a video via URL') do
  log('Start> I open a video via URL')
  begin
    driver.manage.window.maximize
    driver.navigate.to url
  ensure
    log('done')
  end
end

When('I scroll page') do
  begin
    log('Start> I scroll page')
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    sleep(1)
  ensure
    log('done')
  end
end

Then('I can see comments') do
  log('Start> I can see comments')
  begin
    log(driver.find_element(:id, 'contents').displayed?)
  ensure
    log('done')
  end
end

Then('I can see related videos') do
  log('Start> I can see related videos')
  begin
    log(driver.find_element(:id, 'related').displayed?)
    sleep(3)
  ensure
    log('done')
  end
end