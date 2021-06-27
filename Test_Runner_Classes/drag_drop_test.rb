require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Browser_Config/browser_server.rb'
require_relative '/Users/girishg/RubymineProjects/Ruby_Automation_Framework/Page_Objects/drag_drop_ex.rb'

class DragDrop_Test
  br = Browser_Server.new
  br.Open_browser('chrome', 'http://demo.guru99.com/test/drag_drop.html')
  dr = Drag_Drop_Ex.new
  dr.dragdrop
end