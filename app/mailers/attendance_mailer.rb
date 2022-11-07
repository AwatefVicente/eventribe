class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'

  def confirmation_email(user, attendance, event)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    @attendance = attendance

    @event = event

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://calm-journey-06331.herokuapp.com/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Merci pour ta réservation !') 
  end
end
