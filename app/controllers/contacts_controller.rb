class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|

      if @contact.save
        flash[:success] = 'votre email a été enregistrée'
        format.html do
          redirect_to root_path 
        end
      else
        flash[:danger] = 'Veuillez remplir correctement votre email'
        format.html do
          redirect_to root_path
        end
      end
    end

  end

  private

    def contact_params
      params.require(:contact).permit(:email)      
    end

end