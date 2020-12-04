
require 'rubygems'
require 'appium_lib'

USERNAME = 'surendran'
ACCESS_KEY = 'PdbbYUORRqDdBo6isuHzxOGKPmburjYhHww7qS0wr0qdZoNFDZ'

desired_caps = {
	'browserName': 'chrome',
	'platform': 'windows 10',
	'version': '86',
	'resolution': '1920x1080',
	'name': 'LT sample Test',
	'build': 'LT sample build'
}

appium_driver = Appium::Driver.new({
    'caps' => desired_caps,
    'appium_lib' => {
        :server_url => "https://#{USERNAME}:#{ACCESS_KEY}@hub.lambdatest.com/wd/hub"
    }}, true)
driver = appium_driver.start_driver

driver.navigate.to "https://lambdatest.github.io/sample-todo-app/"
driver.find_element(:name, 'li1')
driver.find_element(:name, 'li2')
driver.find_element(:id, 'sampletodotext').send_keys("Yey, Let's add it to list")
driver.find_element(:id, 'addbutton').click
enteredText = driver.find_element(:xpath, '/html/body/div/div/div/ul/li[6]/span').text
status = true if enteredText == "Yey, Let's add it to list"

driver.quit 
