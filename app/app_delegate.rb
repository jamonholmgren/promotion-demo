class AppDelegate < PM::Delegate

  def on_load(app, options)
    open_tab_bar HomeScreen, AboutScreen, ContactScreen, HelpScreen.new(nav_bar: true)
  end

end
