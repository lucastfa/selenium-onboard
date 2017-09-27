Before do |feature|

  Capybara.default_max_wait_time = 5
  Capybara.current_session.driver.browser.manage.window.maximize
  
end