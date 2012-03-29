class CreateContactNumbers < ActiveRecord::Migration
  def change
    create_table :contact_numbers do |t|
      t.integer :friends_id
      t.string :mobile_no
      t.timestamps
    end
  end
end
