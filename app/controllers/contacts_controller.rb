class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|

      if @contact.save
        flash[:success] = 'votre entreprise a éte enregistrée'
        format.html do
          redirect_to root_path 
        end
        format.js
      else
        format.html do
          redirect_to root_path, nottice: 'errors in form'
        end
        format.js do
          @errors = @contact.errors.messages
        end
      end
    end

  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email)      
    end

end