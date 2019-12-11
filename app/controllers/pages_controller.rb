class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def gallery
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    if email.blank?
      flash[:alert] = "Please enter a valid email!"
    else
  # Send an email
  flash[:notice] = "Thank you for your message! we will get in touch with you shortly!"
  end
  redirect_to contact_path
  end
end
