ActiveAdmin.register Perfil do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or

form do |f|
  f.inputs do
      f.input :nome
      f.input :ano_de_licenciatura
      f.input :instituto
      f.input :curso
    f.submit
  end
end
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
