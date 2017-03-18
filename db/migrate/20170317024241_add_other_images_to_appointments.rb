class AddOtherImagesToAppointments < ActiveRecord::Migration[5.0]
  def change
      add_column :appointments, :image2, :string
      add_column :appointments, :image3, :string
      add_column :appointments, :image4, :string
  end
end
