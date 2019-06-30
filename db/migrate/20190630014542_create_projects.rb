class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :date
      t.string :languages
      t.string :description

      t.timestamps
    end
  end
end
