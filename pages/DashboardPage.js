import { BasePage } from "./BasePage.js";

export class DashboardPage extends BasePage {

  // ADD YOUR LOCATORS HERE...
  /**
   * @param {import('playwright').Page} page
   */
  constructor(page) {
    super(page);
    this.userprofileImage = page.locator("//img[@id='user_avatar']");
    this.logoutButton = page.getByText("Log Out");

    this.bookTittle = page.locator("//span[@class='title' and text()='Books']");
    this.borrowingBookTittle = page.locator("//span[@class='title' and text()='Borrowing Books']");
    this.dashboardTittle = page.locator("//span[@class='title' and text()='Dashboard']")
    this.userTittle = page.locator("//span[@class='title' and text()='Users']");
    
  
  }

}
