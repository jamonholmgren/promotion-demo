class HelpScreen < PM::GroupedTableScreen
  title "Help"

  def table_data
    @help_table_data ||= [{
      title: "Get Help",
      cells: [{
        title: "Email us", action: :email_us
      }]
    }]
  end

  def email_us
    mailto_link = NSURL.URLWithString("mailto:jamon@clearsightstudio.com")
    UIApplication.sharedApplication.openURL(mailto_link)
  end
end
