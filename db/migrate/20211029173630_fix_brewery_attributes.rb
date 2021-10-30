class FixBreweryAttributes < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :type, :string
    add_column :breweries, :address, :string
    add_column :breweries, :website, :string
    remove_column :breweries, :city, :string
    remove_column :breweries, :country, :string
  end
end
