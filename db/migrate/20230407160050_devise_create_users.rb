# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: "", index: {unique: true}
      t.string :encrypted_password, null: false, default: ""
      t.string   :reset_password_token, index: {unique: true}
      t.datetime :reset_password_sent_at

      t.timestamps null: false
    end
  end
end
