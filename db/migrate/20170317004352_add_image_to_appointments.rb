class AddImageToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :image, :string
  end
end
