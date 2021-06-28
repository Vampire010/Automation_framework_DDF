require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Page_Objects/win_handles_ex.rb'

class Win_handlesTest
  br = Browser_Server.new
  br.Open_browser('chrome', 'https://www.selenium.dev/documentation/en/webdriver/browser_manipulation/')

  wnd = WinHandles_Ex.new
  wnd.win_hand
end