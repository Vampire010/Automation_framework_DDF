require 'selenium-webdriver'
class Publish_template

  def open_browser
    @driver = Selenium::WebDriver.for :chrome
    @driver.navigate.to 'https://workspace_tenant.orasilabs.rocks/profiles/sign_in'
    @driver.manage.window.maximize
  end

  def sign_in
    @driver.find_element(id:'user_email').send_keys 'lakshmi.pujitha@orasi.com'
    @driver.find_element(id:'user_password').send_keys 'Steno@923'
    @driver.find_element(xpath: '/html/body/div/div/div/div[2]/div[2]/div/div/form/div[2]/div[1]/input').click
    @driver.find_element(xpath:'/html/body/div[1]/div/a').click
    puts "Logged in successful,Dashboard page appeared"

  end

  def navigate_template
    @driver.find_element(link:'Lab Templates').click
    puts "Successfully lab template index page appeared"

  end

  def template_showpage
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    @driver.find_element(id:'index-stack').click
    sleep 2
    @driver.action.send_keys(:tab).perform
    @driver.action.send_keys(:tab).perform
    @driver.action.send_keys(:return).perform
    sleep 5

  end

  def publish_template
    @driver.find_element(xpath:'//*[@id="stack-action-btn-group"]/a[1]').click
    sleep 2
    alert = @driver.switch_to.alert
    alert_text = alert.text
    puts "popup text : #{alert_text}"
    alert.accept
    puts "Successfully lab template is published"
  end
end

obj = Publish_template.new
obj.open_browser
obj.sign_in
obj.navigate_template
obj.template_showpage
#obj.publish_template