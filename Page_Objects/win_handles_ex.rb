require 'selenium-webdriver'

class WinHandles_Ex
  def win_hand
    #Store the ID of the original window
    original_window = $driver.window_handle
    puts "Parent Window ID -  #{original_window}"


    #Click the link which opens in a new window
    $driver.find_element(link: 'new window').click

    #Loop through until we find a new window handle
    $driver.window_handles.each do |handle|
      if handle != original_window
        $driver.switch_to.window handle
        child_window = $driver.window_handle
        puts "Child Window Id - #{child_window}"
        break
      end
    end
    sleep 5
    #Switch back to the old tab or window
     $driver.switch_to.window original_window
    sleep 3

    # Opens a new tab and switches to new tab
    $driver.manage.new_window(:tab)
  end
end