require 'selenium-webdriver'
class Browser_Server

  def Open_browser( browser_Type , url)
    case browser_Type
    when 'chrome'
      $driver = Selenium::WebDriver.for :chrome
      $driver.navigate.to url
    when 'safari'
      $driver = Selenium::WebDriver.for :safari
      $driver.navigate.to url
    end
  end
end

