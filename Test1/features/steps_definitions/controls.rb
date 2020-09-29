require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
url = 'https://www.youtube.com/watch?v=pL4uESRCnv8'

Given('I open a video with URL') do
  log('Start> I open a video with URL')
  begin
    driver.manage.window.maximize
    driver.navigate.to url
    log('Sleep de 30s para saltar anuncios y popus manualmente.')
    sleep(30)
  ensure
    log('done')
  end
end

When('I skip ads if exists') do
  log('Start> I skip ads if exists')
  log('Esto requiere muchas validaciones (y tiempo), puede o no haber anuncios, algunos se pueden saltar, algunos duran poco, existen otros pop-ups como YT Music, etc.')
  #if driver.find_element(:id, 'dismiss-button').displayed?
  #log('music popup present')
  #driver.find_element(:id, 'dismiss-button').click
  #end
  #if driver.find_element(:link_text, 'Omitir anuncios').displayed?
  #log('ad present')
  #driver.find_element(:class, 'ytp-ad-skip-button-slot').click
  #end
  log('done')
end

Then('I play and pause the video') do
  log('Start> I play and pause the video')
  begin
    log('Esto funciona siempre y cuando el video este en reproduccion sin anuncios o pop-ups')
    content_play_pause = driver.find_element(:xpath, '/html/body/ytd-app/div/ytd-page-manager/ytd-watch-flexy/div[4]/div[1]/div/div[1]/div/div/div/ytd-player/div/div/div[33]/div[2]/div[1]/span[2]')
    content_play_pause.click
    sleep(3)
    content_play_pause.click
    sleep(3)
  ensure
    log('done')
  end
end

Then('I use next button') do
  log('Start> I use next button')
  begin
    content_next = driver.find_element(:xpath, '/html/body/ytd-app/div/ytd-page-manager/ytd-watch-flexy/div[4]/div[1]/div/div[1]/div/div/div/ytd-player/div/div/div[33]/div[2]/div[1]/span[3]/a')
    content_next.click
    log('Saltar anuncios manualmente, si los hay claro. 10s')
    sleep(10)
  ensure
    log('done')
  end
end

Then('I use volume button') do
  log('Start> I use volume button')
  begin
    content_volume = driver.find_element(:xpath, '/html/body/ytd-app/div/ytd-page-manager/ytd-watch-flexy/div[4]/div[1]/div/div[1]/div/div/div/ytd-player/div/div/div[33]/div[2]/div[1]/span[4]/button')
    content_volume.click
    sleep(3)
    content_volume.click
    sleep(3)
  ensure
    log('done')
  end
end
