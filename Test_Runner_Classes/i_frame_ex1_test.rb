require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Page_Objects/i_frame_ex1.rb'
class IFrame_Ex1_test


  br = Browser_Server.new
  br.Open_browser('chrome', 'file:///Users/girishg/RubymineProjects/Ruby_Automation_Framework/Frames_Html/SCENARIO_1.html')

  ifrm = IFrame_ex1.new
  ifrm.Open_IFrmaes

end