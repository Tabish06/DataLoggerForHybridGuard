class AddAppNameToLogData < ActiveRecord::Migration[5.1]
  def change
     change_table :log_load_times do |t|
      t.string :app_name
    end
  end
end
