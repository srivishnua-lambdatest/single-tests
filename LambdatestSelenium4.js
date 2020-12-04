const webdriver = require('selenium-webdriver');
 
// username: Username can be found at automation dashboard
const USERNAME = 'koshinder+232';
 
// Accesskey:  Accesskey can be generated from automation dashboard or profile section
const KEY = 'YaRxWH54NughMkrDVIhbuLrddStsdEOaeTEoHvnmtol6M4YWza';
 
// gridUrl: gridUrl can be found at automation dashboard
const GRID_HOST = 'stage-hub.lambdatest.com/wd/hub';
 
function searchTextOnGoogle() {
    // Setup Input capabilities
    const capabilities = {
        user: USERNAME,
        accessKey: KEY,
        platformName: 'Windows 10',
        browserName: 'Chrome',
        browserVersion: '87.0',
        resolution: '1024x768',
        network: true,
        visual: true,
        console: true,
        video: true,
        name: 'Test 1', // name of the test
        build: 'NodeJS build' // name of the build
    }
 
    // URL: https://{username}:{accessKey}@hub.lambdatest.com/wd/hub
    const gridUrl = 'https://' + USERNAME + ':' + KEY + '@' + GRID_HOST;
 
    // setup and build selenium driver object
    const driver = new webdriver.Builder()
        .usingServer(gridUrl)
        .withCapabilities(capabilities)
        .build();
 
    // navigate to a url, search for a text and get title of page
    driver.get('https://www.google.com/ncr').then(function() {
        driver.findElement(webdriver.By.name('q')).sendKeys('LambdaTest
').then(function() {
            driver.getTitle().then(function(title) {
                setTimeout(function() {
                    console.log(title);
                    driver.quit();
                }, 5000);
            });
        });
    });
}

searchTextOnGoogle();
