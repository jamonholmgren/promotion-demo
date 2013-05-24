class AppDelegate < PM::Delegate
  
  status_bar false, animation: :none

  def on_load(app, options)
    register_for_notifications :all
    
    open_tab_bar HomeScreen, StatesScreen, ContactScreen, HelpScreen.new(nav_bar: true)
  end
  
  # Push Notifications (PM version 0.7+)
  def on_notification(notification)
    PM.logger.info notification
  end
  
  def on_registration(token, error)
    # Push up token to your server here
  end

end
