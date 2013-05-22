Teacup::Stylesheet.new :contact_screen do
  style :contact_view,
    backgroundColor: UIColor.grayColor

  style :my_label,
    backgroundColor: UIColor.clearColor,
    text: "Welcome to ProMotion!",
    textColor: UIColor.whiteColor,
    shadowColor: UIColor.blackColor,
    numberOfLines: 0,
    textAlignment: UITextAlignmentCenter,
    font: UIFont.boldSystemFontOfSize(18.0)

end
