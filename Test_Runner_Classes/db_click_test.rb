require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Page_Objects/double_click_ex.rb'

class DbClick_Test
  br = Browser_Server.new
  br.Open_browser('chrome', 'file:///Users/girishg/RubymineProjects/Ruby_Automation_Framework/Frames_Html/Dbouble_Clicks.html')
  db = Double_Click_Ex.new
  db.dbclick

end