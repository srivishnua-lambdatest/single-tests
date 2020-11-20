require 'rubygems'
require 'selenium-webdriver'
# Input capabilities

USERNAME = <>
ACCESS_KEY = <>
caps = Selenium::WebDriver::Remote::Capabilities.new
caps[:browserName] = 'Chrome'
caps[:platform] = 'Windows 10'
caps[:version] = '86'
caps[:resolution] = '1920x1080'
caps[:name] = 'LT sample Test' # test name
caps[:build] = 'LT sample build' # CI/CD job or build name

driver = Selenium::WebDriver.for(:remote,
  :url => "https://#{USERNAME}:#{ACCESS_KEY}@hub.lambdatest.com/wd/hub",
  :desired_capabilities => caps)

driver.navigate.to "https://lambdatest.github.io/sample-todo-app/"
driver.find_element(:name, 'li1')
driver.find_element(:name, 'li2')
driver.find_element(:id, 'sampletodotext').send_keys("Yey, Let's add it to list")
driver.find_element(:id, 'addbutton').click
enteredText = driver.find_element(:xpath, '/html/body/div/div/div/ul/li[6]/span').text
status = true if enteredText == "Yey, Let's add it to list"
driver.quit 