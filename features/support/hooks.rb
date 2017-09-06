Before do |feature|

  Capybara.configure do |config|
    config.default_driver = :selenium
  end

  Capybara.default_max_wait_time = 5
  
end