class Hotel < ActiveRecord::Base
   validates_presence_of :name,
     :message => 'error name of hotel'
   validates_presence_of :resort,
     :message => 'error state of hotel'
   validates_presence_of :tip,
     :message => 'error tip of hotel'
   validates_presence_of :rank, 
   validates :rank, :inclusion => { :in => 0..5 }
     :message => 'error rank of hotel'
     #belongs_to :resort
     #has_many :rooms
     
  def before_validation()
     self.attribute_names.each do |n|
       self[n] = self[n].strip if self[n].kind_of?(String)
     end
   end
end
