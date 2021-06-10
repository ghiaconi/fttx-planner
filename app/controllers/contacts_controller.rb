class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      @contact.deliver
      @contact = Contact.new
      redirect_to root_path
      flash[:notice] = "We got your message and we'll be back to you asap!"
    else
      render :new
    end
  end

end
