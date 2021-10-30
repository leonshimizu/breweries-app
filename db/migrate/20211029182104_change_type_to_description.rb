class ChangeTypeToDescription < ActiveRecord::Migration[6.1]
  def change
    rename_column :breweries, :type, :description 
  end
end
