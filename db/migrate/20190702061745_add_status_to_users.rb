class AddStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status01, :integer, default: 0
    add_column :users, :status02, :integer, default: 0
    add_column :users, :status03, :integer, default: 0
    add_column :users, :status04, :integer, default: 0
    add_column :users, :status05, :integer, default: 0
    add_column :users, :status06, :integer, default: 0
    add_column :users, :status07, :integer, default: 0
    add_column :users, :status08, :integer, default: 0
    add_column :users, :status09, :integer, default: 0
    add_column :users, :status10, :integer, default: 0
    add_column :users, :status11, :integer, default: 0
    add_column :users, :status12, :integer, default: 0
    add_column :users, :status13, :integer, default: 0
    add_column :users, :status14, :integer, default: 0
    add_column :users, :status15, :integer, default: 0
    add_column :users, :status16, :integer, default: 0
    add_column :users, :status17, :integer, default: 0
    add_column :users, :status18, :integer, default: 0
    add_column :users, :status19, :integer, default: 0
    add_column :users, :status20, :integer, default: 0
  end
end
