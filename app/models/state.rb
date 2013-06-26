class State
  attr_accessor :name
  
  def self.all
    [
      new("Alabama"),
      new("Alaska"),
      new("Arizona"),
      new("Arkansas"),
      new("California"),
      new("Colorado"),
      new("Connecticut"),
      new("Delaware"),
      new("Florida"),
      new("Georgia"),
      new("Hawaii"),
      new("Idaho"),
      new("Illinois"),
      new("Indiana"),
      new("Iowa"),
      new("Kansas"),
      new("Kentucky"),
      new("Louisiana"),
      new("Maine"),
      new("Maryland"),
      new("Massachusetts"),
      new("Michigan"),
      new("Minnesota"),
      new("Mississippi"),
      new("Missouri"),
      new("Montana"),
      new("Nebraska"),
      new("Nevada"),
      new("New Hampshire"),
      new("New Jersey"),
      new("New Mexico"),
      new("New York"),
      new("North Carolina"),
      new("North Dakota"),
      new("Ohio"),
      new("Oklahoma"),
      new("Oregon"),
      new("Pennsylvania"),
      new("Rhode Island"),
      new("South Carolina"),
      new("South Dakota"),
      new("Tennessee"),
      new("Texas"),
      new("Utah"),
      new("Vermont"),
      new("Virginia"),
      new("Washington"),
      new("West Virginia"),
      new("Wisconsin"),
      new("Wyoming")
    ]
  end
  
  def initialize(title)
    self.name = title
  end
end
