class ModalScreen < PM::Screen
  title "Presented Modally"

  def on_load
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve
    set_nav_bar_button :left, title: "Close", action: :close
  end
end
