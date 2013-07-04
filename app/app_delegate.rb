class AppDelegate < PM::Delegate
  status_bar false, animation: :none

  def on_load(app, options)
    register_for_push_notifications :all
    
    # open_tab_bar HomeScreen, StatesScreen, ContactScreen, HelpScreen.new(nav_bar: true)
    # open_split_screen StatesScreen.new(nav_bar: true), HelpScreen.new(nav_bar: true)
    open AppleWebScreen.new(nav_bar: true)
  end
  
  # Push Notifications (PM version 0.7+)
  def on_push_notification(notification)
    PM.logger.info notification
  end
  
  def on_push_registration(token, error)
    # Push up token to your server here
  end

end
