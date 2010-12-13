class HotelsController < ApplicationController
  
  def create2
  end
  def create
      p = Hotel.new 
      p.attributes = params['hotel']
      p.save
      needs_to_validate(p)
      redirect_to(:action => :list)
    end
  
  def list
    @items = Hotel.find(:all)
  end
end
