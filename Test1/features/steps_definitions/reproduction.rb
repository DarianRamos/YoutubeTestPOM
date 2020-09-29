require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
url = 'https://www.youtube.com/'

Given('I open YT for play video') do
  log('Start> I open YT for play video')
  begin
    driver.manage.window.maximize
    driver.navigate.to url
    sleep(5)
  ensure
    log('done')
  end
end

When('I Open a random video') do
  log('Start> I open a random video')
  begin
    driver.find_element(:id, 'content').click
    sleep(5)
  ensure
    log('done')
  end
end

Then('I check reproduction') do
  log('Start> I check reproduction')
  begin
    element_video = driver.find_element(:id, 'movie_player')
    result = log(element_video.displayed?)
  ensure
    log('done')
  end
end