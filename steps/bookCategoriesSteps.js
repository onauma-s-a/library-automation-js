import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from '@playwright/test';
import { BrowserUtility } from '../utilities/BrowserUtility.js';
import { PageManager } from "../globalPagesSetup.js";

// WRITE YOUR STEP DEFINITIONS HERE...

When('user clicks the Books link', async function () {
    await PageManager.dashboardPage.bookLink.click();
});

When('user clicks the Book Categories drop down box', async function () {
    await PageManager.booksPage.bookCategoriesDropdown.click();
});

Then('user should see {int} book categories', async function (int) {
    const totalOptions = await PageManager.booksPage.bookCategoriesDropdown.locator("option").count();
    expect(totalOptions).toBe(int);
});


//------------------ Verify that all categories are displayed ----------------------------------

Then('book category name {string} should be included in the categories', async function (string) {
  // Write code here that turns the phrase above into concrete actions
  const checkOption= await PageManager.booksPage.bookCategoriesDropdown.locator("option").allInnerTexts();
  expect(checkOption).toContain(string);
});