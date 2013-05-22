class ContactScreen < PM::Screen
  stylesheet :contact_screen

  title "Contact"

  def will_appear
    @view_setup ||= set_up_view
  end

  def set_up_view
    set_attributes self.view,
      stylename: :contact_view

    add label = UILabel.new,
      stylename: :my_label,            # Teacup
      resize: [ :left, :right, :top ], # ProMotion
      frame: CGRectMake(10, 10, 300, 45)
    
    true
  end
end
