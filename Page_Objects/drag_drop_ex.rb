class Drag_Drop_Ex

  def dragdrop
    src = $driver.find_element(xpath: '//*[@id="fourth"]/a')
    dst = $driver.find_element(xpath: '//*[@id="amt7"]/li')
    $driver.action.drag_and_drop(src, dst).perform

  end
end