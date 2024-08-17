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
    await PageManager.dashboardPage.dashboardLink.click();
  } else if (string === 'Users') {
    await PageManager.dashboardPage.usersLink.click();
  } else if (string === 'Books') {
    await PageManager.dashboardPage.bookLink.click();
  }   
});

Then('admin should be in {string} page', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  if(string === 'Dashboard') {
    await expect(PageManager.dashboardPage.dashboardLink).toBeVisible;
  } else if (string === 'Users') {
    await expect(PageManager.dashboardPage.usersLink).toBeVisible();
  } else if (string === 'Books') {
    await expect(PageManager.dashboardPage.bookLink).toBeVisible();
  }   
});

