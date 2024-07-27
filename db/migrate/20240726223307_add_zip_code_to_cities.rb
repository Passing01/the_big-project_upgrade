class AddZipCodeToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :zip_code, :string
  end
end
