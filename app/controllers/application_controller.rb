class ApplicationController < ActionController::Base
    before_action :login_required
    include SessionsHelper
    include TimeHelper

    private

    def login_required
      redirect_to new_session_path unless current_user
    end
end
