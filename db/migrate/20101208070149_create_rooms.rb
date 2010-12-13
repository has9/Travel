class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
          t.integer :hotel_id
          t.column :nomber, :text, :null => false # название курорта
          t.column :hotel, :text, :null => false # страна
          t.column :tip, :text, :null => false # тип
          t.column :rank, :integer, :null => false # звезда
      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
