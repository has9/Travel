class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  before_filter  :errors_validator_start
  protect_from_forgery
  

    def errors_validator_start()
      needs_to_validate = session['needs_to_validate']
      @errors = []
      unless needs_to_validate.nil?
        needs_to_validate.each do |i|
          i.each do |k, v|
            @errors << [k, v]
          end
        end
      end
      session['needs_to_validate'] = []
    end

    def needs_to_validate(i)
      @needs_to_validate = [] if @needs_to_validate.nil?
      unless session['needs_to_validate'].nil?
        @needs_to_validate = session['needs_to_validate']
      end
      if i.errors.size > 0
      @needs_to_validate << i.errors
      puts i.errors
      end 
      session['needs_to_validate'] = @needs_to_validate
    end
  
  
  
end
