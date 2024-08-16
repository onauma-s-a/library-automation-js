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

    this.bookLink = page.locator("//a[@href='#books' and @class='nav-link']");
    this.borrowingBooksLink = page.locator("//span[@class='title' and text()='Borrowing Books']");
    this.dashboardLink = page.locator("//span[@class='title' and text()='Dashboard']")
    this.usersLink = page.locator("//span[@class='title' and text()='Users']");

    this.bookTittle = page.locator("//h3[text()='Book Management']");
    this.borrowingBookTittle = page.locator("//h3[text()='Borrowing Books']");
    this.dashboardTittle = page.locator("//span[@class='title' and text()='Dashboard']")
    
  }

}
