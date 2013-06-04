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

  def should_rotate(orientation)
    PM.logger.debug "Trying to determine rotation"
    UIDeviceOrientationPortrait == orientation
  end

  def should_autorotate
    PM.logger.debug "should autorotate?"
    false
  end

  def supported_orientations
    PM.logger.debug "checking supported orientations"
    orientations = 0
    orientations |= UIInterfaceOrientationMaskPortrait
    orientations
  end

end
