class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  	@perfil = Perfil.create(nome: "Nome", instituto: "Instituto", curso: "Curso")     
  	@perfil.user = current_user
  	 @perfil.save
  	new_perfil_path # Or :prefix_to_your_route

  	#current_user.perfil
  end
end