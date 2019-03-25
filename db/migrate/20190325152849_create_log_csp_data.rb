class CreateLogCspData < ActiveRecord::Migration[5.1]
  def change
    create_table :log_csp_data do |t|
      t.string :appname
      t.text :errors

      t.timestamps
    end
  end
end
