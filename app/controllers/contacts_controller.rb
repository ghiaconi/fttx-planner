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
      flash[:notice] = "Am primit mesajul tau si iti vom raspunde cat mai curand"
    else
      render :new
    end
  end

end
