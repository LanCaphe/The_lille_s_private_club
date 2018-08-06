class SessionsController < ApplicationController
	def new
	end

	def create
	   user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user

        else
        #rafraichir et ajouter un message d'erreur
        flash[:danger] = "L'email et/ou le mot de passe n'est pas correct" # Not quite right!
        render 'new'
	   end
    end
       
	def destroy
  	end
end
