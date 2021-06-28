require 'selenium-webdriver'
require 'roo'

class KB_Login_Page

  def Login_TC01
    Selenium::WebDriver.logger.output = 'selenium1.text'
    # Selenium::WebDriver.logger.info('This is info message')
    #Selenium::WebDriver.logger.warn('This is warning message')

    ods = Roo::Spreadsheet.open('/Users/girishg/RubymineProjects/Ruby_Automation_Framework/DataSource/user.xlsx')
    banker_ID = ods.sheet(0).cell(1,1)
    usernae = ods.sheet(0).cell(1,2)
    usr_Password = ods.sheet(0).cell(1,3)

    bank_Id = $driver.find_element(name: 'bank_id')
    bankers_Username = $driver.find_element(name: 'username')
    bankers_UsrPassowrd = $driver.find_element(name: 'password')
    login_Button = $driver.find_element(id: 'clicked_when_enter_id')

    bank_Id.send_keys(banker_ID)
    Selenium::WebDriver.logger.info(' Data Enterd into BankerID Text Field ')

    bankers_Username.send_keys(usernae)
    Selenium::WebDriver.logger.warn(' Data Enterd into Username Text Field ')

    bankers_UsrPassowrd.send_keys(usr_Password)
    Selenium::WebDriver.logger.warn(' Data Enterd into Password Text Field ')


    login_Button.click
    Selenium::WebDriver.logger.info(' User Clicked on LogIn Button ')

    #rpot = Test_Reports.new
    #rpot.report_Gen
    $driver.quit


  end
end
