require 'selenium-webdriver'
class Browser_Server

  def Open_browser( browser_Type , url)
    case browser_Type
    when 'chrome'
      caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})

      $driver = Selenium::WebDriver.for :chrome, desired_capabilities: caps
      $driver.navigate.to url

    when 'safari'
      $driver = Selenium::WebDriver.for :safari
      $driver.navigate.to url
    end
  end
end

