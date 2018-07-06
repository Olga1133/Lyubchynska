const {Given, When} = require('cucumber');

Given('User prints comment {string}', (comment) => {
    return console.log(comment);
});

When('User navigates to the Calculator page with url {string}', (url) => {
    return browser.get(url);
});

When('User enters {int} in field {string}', (number, locator) => {
    return element(by.css(locator)).sendKeys(number);
});
When('User clicks Go Button {string}', (locator) => {
    return element(by.css(locator)).click();
});
When('User selects {string} from dropdown {string}', (locatorOperator, locatorSelect) => {
    element(by.css(locatorSelect)).click();
    return element(by.css(locatorOperator)).click();
});

