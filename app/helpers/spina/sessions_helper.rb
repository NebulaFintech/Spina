module Spina
  module SessionsHelper

    def current_carina_user
      @current_carina_user ||= current_orion_user
    end
  end
end