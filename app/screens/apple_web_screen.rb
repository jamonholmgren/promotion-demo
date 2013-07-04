class AppleWebScreen < PM::WebScreen

  title "Apple.com"

  def content
    # You can return:
    #  1. A reference to a file placed in your resources directory
    #  2. An instance of NSURL
    NSURL.URLWithString("http://www.apple.com/")
  end

  def load_started
    # Optional
    # Called when the request starts to load
  end

  def load_finished
    # Optional
    # Called when the request is finished
  end

  def load_failed(error)
    # Optional
    # "error" is an instance of NSError
  end

end
