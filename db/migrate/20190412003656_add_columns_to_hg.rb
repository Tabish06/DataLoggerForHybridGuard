class AddColumnsToHg < ActiveRecord::Migration[5.1]
  def change
  	change_table :log_hybrid_guards do |t|
  		t.text :permissions
  		t.text :plugins
  		t.text :resource_apis
  	end
  end
end
