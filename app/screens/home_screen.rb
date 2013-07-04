class HomeScreen < PM::Screen
  title "Home"

  def will_appear
    @view_setup ||= set_up_view
  end

  def set_up_view
    set_attributes self.view, {
      background_color: UIColor.whiteColor
    }
    
    set_tab_bar_item system_icon: UITabBarSystemItemFeatured

    true
  end

end
