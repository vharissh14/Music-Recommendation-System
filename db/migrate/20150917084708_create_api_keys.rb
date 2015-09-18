class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :access_token
      t.text :name
      t.text :email

      t.timestamps null: false
    end
  end
end
