class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :uid
      t.integer :sid
      t.text :name
      t.text :format
      t.integer :file_size
      t.integer :bit_rate
      t.text :album
      t.text :composer
      t.text :genere
      t.integer :year
      t.time :duration

      t.timestamps null: false
    end
  end
end
