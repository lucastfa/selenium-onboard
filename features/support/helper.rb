require 'cucumber/formatter/html'

class Helper
  def take_screenshot(name_file, folder = 'screenshots/test_screens')
    file = "#{folder}/#{name_file}.png"
    FileUtils.mkdir_p(folder) unless File.exist?(folder)
    Capybara.page.save_screenshot(file)
    file
  end
end