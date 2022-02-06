class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  
  def home
  end

  def about
  end

  def competences
  end

  def materiel
  end

  # def send_contact
  #    ContactMailer.contact(params[:email, :message]).deliver
  # end
end
