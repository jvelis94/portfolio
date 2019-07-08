class ChangeIntegerLimitInInquiries < ActiveRecord::Migration[5.2]
  def change
    change_column :inquiries, :phone, :integer, limit: 8
  end
end
