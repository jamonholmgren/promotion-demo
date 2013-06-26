class StatesScreen < PM::TableScreen
  searchable
  refreshable

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
          arguments: { state: state }
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
    # refresh data
    stop_refreshing
    update_table_data
  end
  
  def tapped_state(args={})
    App.alert args[:state].name
  end
end
