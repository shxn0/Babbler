class CreateBabblers < ActiveRecord::Migration
  def change
    create_table :babblers do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
