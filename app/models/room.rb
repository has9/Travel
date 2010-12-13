class Room < ActiveRecord::Base
   validates_presence_of :name,
     :message => 'error name of room'
   validates_presence_of :state,
     :message => 'error state of room'
   validates_presence_of :tip,
     :message => 'error tip of room'
   validates_presence_of :rank,
     :message => 'error rank of room'
     #belogns_to :hotel
  def before_validation()
     self.attribute_names.each do |n|
       self[n] = self[n].strip if self[n].kind_of?(String)
     end
   end
  
end
