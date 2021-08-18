class ApplicationController < ActionController::Base
    before_action do
        I18n.locale = :ar # Or whatever logic you use to choose.
        :authenticate_teacher! 
      end
    
end
