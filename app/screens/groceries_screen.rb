class GroceriesScreen < PM::GroupedTableScreen
  title "Groceries"
    
  def on_load
    set_nav_bar_button :right, action: :add, system_icon: UIBarButtonSystemItemAdd
    # set_tab_bar_item title: "Groceries", icon: "groceries.png"
  end
 
  def will_appear
    set_attributes self.view, {
      backgroundColor: UIColor.whiteColor
    }
  end
  
  def table_data
    [{
      title: "Types",
      cells: [
        { title: "Healthy", action: :on_cell_tapped, arguments: { id: 42 }, accessory: {
          view: :switch,
          action: :on_cell_switched,
          arguments: { id: 42 }
        } }
      ]
    }]
  end
  
  def add
    open AddGroceryScreen.new
  end
  
  def on_cell_switched(args={})
    puts "GROCERY SWITCHED: #{args[:id]}"
  end
  
  def on_cell_tapped(args={})
    puts "GROCERY TAPPED: #{args[:id]}"
  end
end
