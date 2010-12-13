class Resort < ActiveRecord::Base
    validates_presence_of :name,
      :message => 'error name of resort'
    validates_presence_of :state,
      :message => 'error state of resort'
    validates_presence_of :tip,
      :message => 'error tip of resort'
    validates_presence_of :rank,
      :message => 'error rank of resort'
      #has_many :hotels
   def before_validation()
      self.attribute_names.each do |n|
        self[n] = self[n].strip if self[n].kind_of?(String)
      end
    end
    
    def search(str)
      Resort.where(["name = ?", str[:name]]).hotels
    end
    
end
