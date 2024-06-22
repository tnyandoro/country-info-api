class AddStatusToCountry < ActiveRecord::Migration[7.1]
  def change
    add_column :countries, :status, :string
  end
end
