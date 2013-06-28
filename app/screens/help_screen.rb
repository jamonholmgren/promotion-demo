class HelpScreen < PM::GroupedTableScreen
  title "Help"

  def table_data
    @help_table_data ||= [{
      title: "Get Help",
      cells: [
        { title: "Email us", action: :email_us },
        { title: "Open Modal", action: :modal_tapped },
        {
          title: "Switch",
          accessory: {
            view: :switch,
            action: :switched,
            arguments: { message: "I'm switched!" }
          }
        },
        { title: "Home Tab", action: :tab_open, arguments: 0 },
        { title: "States Tab", action: :tab_open, arguments: 1 },
        { title: "Contact Tab", action: :tab_open, arguments: "Contact" }
      ]
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

  def modal_tapped
    open_modal ModalScreen.new(nav_bar: true)
  end
  
  def on_return(args={})
    PM.logger.info args
  end
  
  def tab_open(args)
    open_tab args
  end
  
  def switched(args={})
    App.alert "#{args[:message]} - value: #{args[:value]}"
  end
  
end
