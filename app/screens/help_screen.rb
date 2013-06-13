class HelpScreen < PM::GroupedTableScreen
  title "Help"

  def table_data
    @help_table_data ||= [{
      title: "Get Help",
      cells: [{
        title: "Email us", action: :email_us,
        title: "Present Modal", action: :present_modal,
        title: "Groceries", action: :open_groceries_screen
      }]
    }]
  end

  def email_us
    mailto_link = NSURL.URLWithString("mailto:jamon@clearsightstudio.com")
    UIApplication.sharedApplication.openURL(mailto_link)
  end

  def present_modal
    open_modal ModalScreen.new(nav_bar: true)
  end

  def open_groceries_screen
    open GroceriesScreen
  end

end
