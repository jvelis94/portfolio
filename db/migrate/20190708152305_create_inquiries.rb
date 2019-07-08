class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :website
      t.integer :budget
      t.string :description

      t.timestamps
    end
  end
end
