class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.integer :resort_id
      t.column :name, :text, :null => false # название курорта
      t.column :resort, :text, :null => false # страна
      t.column :tip, :text, :null => false # тип
      t.column :rank, :integer, :null => false # звезда
      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
