class CreateLogLoadTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :log_load_times do |t|
      t.float :download_from_server_wo_hg
      t.float :render_webpage_wo_hg
      t.float :dom_wo_hg
      t.float :download_from_server_w_hg
      t.float :render_webpage_w_hg
      t.float :dom_w_hg

      t.timestamps
    end
  end
end
