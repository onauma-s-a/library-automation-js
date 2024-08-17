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
    this.borrowingBooksLink = page.locator("//a[@class='nav-link' and contains(., 'Borrowing Books')]");
    this.dashboardLink = page.locator("//a[@class='nav-link' and contains(., 'Dashboard')]")
    this.usersLink = page.locator("//a[@class='nav-link' and contains(., 'Users')]");

    this.bookTittle = page.locator("//span[@class='title' and text()='Books']");
    this.borrowingBookTittle = page.locator("//span[@class='title' and text()='Borrowing Books']");
    this.dashboardTittle = page.locator("//span[@class='title' and text()='Dashboard']")
    this.userTittle = page.locator("//span[@class='title' and text()='Users']");
    
  }

}
