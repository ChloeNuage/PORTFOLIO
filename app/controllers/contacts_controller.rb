class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # Envoie l'email à l'administrateur (toi)
      ContactMailer.contact_email(@contact).deliver_now
      # Redirige vers la page de remerciement après un message envoyé
      redirect_to thank_you_path, notice: "Votre message a été envoyé avec succès!"
    else
      # Si le message n'est pas valide, on reste sur la page du formulaire
      render :new
    end
  end

  def thank_you
    # Cette action sert à afficher la page de remerciement
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
