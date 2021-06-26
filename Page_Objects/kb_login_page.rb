require 'selenium-webdriver'
require 'roo'
class KB_Login_Page

  def Login_TC01

    ods = Roo::Spreadsheet.open('/Users/girishg/RubymineProjects/Ruby_Automation_Framework/DataSource/user.xlsx')
    banker_ID = ods.sheet(0).cell(1,1)
    usernae = ods.sheet(0).cell(1,2)
    usr_Password = ods.sheet(0).cell(1,3)

    bank_Id = $driver.find_element(name: 'bank_id')
    bankers_Username = $driver.find_element(name: 'username')
    bankers_UsrPassowrd = $driver.find_element(name: 'password')
    login_Button = $driver.find_element(id: 'clicked_when_enter_id')

    bank_Id.send_keys(banker_ID)
    bankers_Username.send_keys(usernae)
    bankers_UsrPassowrd.send_keys(usr_Password)
    sleep 4

    login_Button.click

    sleep 4
  end
end
