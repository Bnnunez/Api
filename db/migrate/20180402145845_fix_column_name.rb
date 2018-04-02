class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments,  :body, :comment
  end
end
