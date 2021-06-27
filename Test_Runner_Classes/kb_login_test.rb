require 'selenium-webdriver'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Page_Objects/kb_login_page.rb'
class KbLogin_Test


        Selenium::WebDriver.logger.output = 'selenium.json'
        Selenium::WebDriver.logger.info('This is info message')
        Selenium::WebDriver.logger.warn('This is warning message')
        br = Browser_Server.new
        br.Open_browser('chrome', 'http://mykidsbank.org/')

        tc = KB_Login_Page.new
        tc.Login_TC01




end

