class MyMapScreen < PM::MapScreen
  title "My Map"
  start_position latitude: 35.090648651123, longitude: -82.965972900391, radius: 4
  
  def on_appear
    update_annotation_data
  end
  
  def annotation_data
    [{
      longitude: -82.965972900391,
      latitude: 35.090648651123,
      title: "Rainbow Falls",
      subtitle: "Nantahala National Forest"
    },{
      longitude: -82.966093558105,
      latitude: 35.092520895652,
      title: "Turtleback Falls",
      subtitle: "Nantahala National Forest"
    },{
      longitude: -82.95916,
      latitude: 35.07496,
      title: "Windy Falls"
    },{
      longitude: -82.943031505056,
      latitude: 35.102516828489,
      title: "Upper Bearwallow Falls",
      subtitle: "Gorges State Park"
    },{
      longitude: -82.956244328014,
      latitude: 35.085548421623,
      title: "Stairway Falls",
      subtitle: "Gorges State Park",
      your_param: "CustomWahtever"
    }]
  end

end
