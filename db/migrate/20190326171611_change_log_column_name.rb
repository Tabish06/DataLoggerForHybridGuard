class ChangeLogColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :log_csp_data,:errors,:errors_list
  end
end
