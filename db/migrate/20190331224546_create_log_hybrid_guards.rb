class CreateLogHybridGuards < ActiveRecord::Migration[5.1]
  def change
    create_table :log_hybrid_guards do |t|
      t.string :app_name
      t.boolean :working
      t.text :comments

      t.timestamps
    end
  end
end
