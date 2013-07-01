class StatesScreen < PM::TableScreen
  searchable placeholder: "Search for states"
  refreshable

  stylesheet :tables

  title "States"

  def table_data
    @about_table_data ||= begin
      groups = []
      current_letter = ""
      state_names.each do |state|
        if state[0] != current_letter
          current_letter = state[0]
          groups << { title: current_letter, cells: [] }
        end
        groups.last[:cells] << {
          title: state,
          action: :tapped_state,
          arguments: { state: state },
          background_color: UIColor.blackColor,
          text_color: UIColor.whiteColor
        }
      end
      groups
    end
  end
  
  def table_data_index
    state_names.map{|s| s[0]}.uniq
  end
  
  def state_names
    @names ||= State.all.map(&:name)
  end
 
  def on_refresh
    # Spin off a new thread to deal with the data.
    Dispatch::Queue.new("com.clearsightstudio.promotion-demo.refresh").async do
      # Load something, process it
      sleep 2
      # Then go back to the main thread to refresh the UI
      Dispatch::Queue.main.async do
        stop_refreshing
        update_table_data
      end
    end
  end
  
  def tapped_state(args={})
    App.alert args[:state]
  end
end
