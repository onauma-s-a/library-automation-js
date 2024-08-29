import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...
When('admin is already on homepage', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.page).toHaveTitle("Library");
});

Then('admin should see Dashboard module on tab bar', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.dashboardPage.dashboardTittle).toBeVisible();
});

Then('should see User module on tab bar', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.dashboardPage.userTittle).toBeVisible();
});

Then('shoud see Books module on tab bar', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.dashboardPage.bookTittle).toBeVisible();
});


//------------------------ scenario 2 ---------------------------------------

When('admin click on {string} link', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  if(string === 'Dashboard') {
    await PageManager.dashboardPage.dashboardTittle.click();
  } else if (string === 'Users') {
    await PageManager.dashboardPage.userTittle.click();
  } else if (string === 'Books') {
    await PageManager.dashboardPage.bookTittle.click();
  }   
});

Then('admin should be in {string} page', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  if(string === 'Dashboard') {
    await expect(PageManager.page).toHaveURL('https://library2.cydeo.com/#dashboard');
  } else if (string === 'Users') {
    await expect(PageManager.page).toHaveURL('https://library2.cydeo.com/#users');
  } else if (string === 'Books') {
    await await expect(PageManager.page).toHaveURL('https://library2.cydeo.com/#books');
  } 
});

