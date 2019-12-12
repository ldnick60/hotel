class BookingController < ApplicationController
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, :if => :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :last_name, :phone])
    end
    def booking
    end
end
