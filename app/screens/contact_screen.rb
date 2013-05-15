class ContactScreen < PM::Screen
  title "Contact"

  def will_appear
    @view_setup ||= set_up_view
  end

  def set_up_view
    set_attributes self.view,
      background_color: UIColor.grayColor

    add UILabel.alloc.initWithFrame([[10, 10], [300, 45]]),
      text: "Welcome to ProMotion!",
      resize: [ :left, :right, :top ],
      background_color: UIColor.clearColor,
      text_color: UIColor.whiteColor,
      shadow_color: UIColor.blackColor,
      number_of_lines: 0,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.boldSystemFontOfSize(18.0)

    true
  end
end
