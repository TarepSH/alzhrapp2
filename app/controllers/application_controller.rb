class ApplicationController < ActionController::Base
  before_action  :authenticate_teacher!, except: [:home]
 

    before_action do
        I18n.locale = :ar # Or whatever logic you use to choose.
      end
    
      
end
