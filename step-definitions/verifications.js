const {Then} = require('cucumber');
const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
const expect = chai.expect;

Then('Page title is equal to {string}', (title) => {
    return expect(browser.getTitle()).to.eventually.equal(title);
});

Then('Result {string} is equal to {string}', (locator, result) => {
    return element(by.css(locator)).getText().then(function (text) {
        return expect(text).to.equal(result);
    });
});
Then ('Go button {string} is displayed', (locator) =>{
    const elem = element(by.css (locator));
    return expect (elem.isDisplayed()).to.eventually.equal(true);
});
Then ('Go button {string} with text {string} is displayed', (locator, text)=> {
    const elem = element(by.cssContainingText(locator, text));
    return expect(elem.isDisplayed()).to.eventually.equal(true);

});
Then ('Go button {string} with text {string} is displayed', (locator, text)=> {
    const elem = element(by.cssContainingText(locator, text));
    return expect(elem.isDisplayed()).to.eventually.equal(true);
Then('Attribute {string} of field {string} is equal to {string}', (locator, result) => {


