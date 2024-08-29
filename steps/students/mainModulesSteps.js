import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "@playwright/test";
import { BrowserUtility } from "../../utilities/BrowserUtility.js";
import { PageManager } from "../../globalPagesSetup.js";


// WRITE YOUR STEP DEFINITIONS HERE...
When('user is already on homepage', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.page).toHaveTitle("Library");
});

Then('user should see Books module on tab bar', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.dashboardPage.bookTittle).toBeVisible();
});

Then('shoud see Borrowing Books module on tab bar', async function () {
  // Write code here that turns the phrase above into concrete actions
  await expect(PageManager.dashboardPage.borrowingBookTittle).toBeVisible();
});


//----------- senario 2 -----------------------------------------

When('user click on {string} link', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  if(string === 'Books') {
    await PageManager.dashboardPage.bookTittle.click();
  } else if (string === 'Borrowing Books') {
    await PageManager.dashboardPage.borrowingBookTittle.click();
  }                                                                              
});

Then('user should be in {string} page', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  if(string === 'Books') {
    await expect(PageManager.page).toHaveURL('https://library2.cydeo.com/#books');
  } else if (string === 'Borrowing Books') {
    await expect(PageManager.page).toHaveURL('https://library2.cydeo.com/#borrowing-books');
  } 
});