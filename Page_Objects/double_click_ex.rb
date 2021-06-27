class Double_Click_Ex
  def dbclick
    el = $driver.find_element(id: "demo")
    $driver.action.double_click(el).perform

  end

end