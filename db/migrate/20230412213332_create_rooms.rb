class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.srting :title, null: false, index: true

      t.timestamps
    end
  end
end
