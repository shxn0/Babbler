class RemoveTitleToBabblers < ActiveRecord::Migration
  def change
    remove_column :babblers, :title, :string
  end
end
