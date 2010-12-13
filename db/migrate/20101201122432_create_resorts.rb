class CreateResorts < ActiveRecord::Migration
  def self.up
    create_table :resorts do |t|
      t.column :name, :text, :null => false # название курорта
      t.column :state, :text, :null => false # страна
      t.column :tip, :text, :null => false # тип
      t.column :rank, :integer, :null => false # звезда
      
      t.timestamps
    end
  end

  def self.down
    drop_table :resorts
  end
end
