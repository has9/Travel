class ResortsController < ApplicationController
  def create
      p = Resort.new
      p.attributes = params['resort']
      p.save
      needs_to_validate(p)
      redirect_to(:action => :list)
    end
  
    def edit
      @item = Resort.find(params[:id])
      redirect_to(:action => :list) if @item.nil?
    end

    def edit_commit
      p = Resort.find(params['resort']['id'])
      unless p.nil?
        p.attributes = params['resort']
        p.save
        needs_to_validate(p)
      end
      redirect_to(:action => :list)
    end
  
  def list
    @items = Resort.find(:all)
  end
   
end
