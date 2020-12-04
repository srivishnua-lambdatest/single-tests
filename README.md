# single-tests

### For running the python tests

This format is supported for all the OS:

```
# Go to the directory where the file is saved
cd /path/to/the/test/directory
```
For Selenium
```cmd
# Install the dependencies
pip install pytest && pip install selenium>2.5
```

For Appium 
```cmd
# Install the dependencies
pip install pytest && pip install Appium-Python-Client
```

```
python lambdatest.py
```
### For running Ruby tests

```
# Go to the directory where the file is saved
cd /path/to/the/test/directory
```

```cmd
# Install the required dependencies
gem install selenium-webdriver && gem install ffi
```
```
# To execute the test
ruby lambdatest.rb
```

### For running NodeJS Tests

```
# Go to the directory where the file is saved
cd /path/to/the/test/directory
```

```cmd
npm i selenium-webdriver
```
```
node lambdatest.js
```
### For running Java Tests
```
# Go to the directory where the file is saved
cd /path/to/the/test/directory
```

```
javac lambdatest.java
```

```
java lambdatest
```

