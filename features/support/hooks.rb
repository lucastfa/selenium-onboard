require_relative 'helper.rb'

Before do |_feature|
 Capybara.default_max_wait_time = 10
end

After do |scenario|
  @helper = Helper.new
  if scenario.failed?
    file = @helper.take_screenshot(scenario.name, 'screenshots/test_failed')
    embed(file, 'image/png', 'Screenshot')
  end
end
