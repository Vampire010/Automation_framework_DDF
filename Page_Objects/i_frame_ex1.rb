class IFrame_ex1

  def Open_IFrmaes
    $driver.manage.timeouts.implicit_wait = 5

    # Store iframe web element
    iframe1 = $driver.find_element(name: 'Frame1')
    iframe2 = $driver.find_element(name: 'Frame2')
    iframe3 = $driver.find_element(name: 'Frame3')

    # Switch to the frame1
    $driver.switch_to.frame iframe1

    search_Text = $driver.find_element(id: 'Fname1')
    search_Text.send_keys("Selenium WebDriver")

    clik = $driver.find_element(xpath:'/html/body/form/input')
    $driver.action.context_click(clik).perform

    # Return to the top level
    $driver.switch_to.default_content

    # Switch to the frame2
    $driver.switch_to.frame iframe2
    search_Text = $driver.find_element(id: 'Fname2')
    search_Text.send_keys("Selenium WebDriver")



  end

end