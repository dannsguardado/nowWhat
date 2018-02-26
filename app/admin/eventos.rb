ActiveAdmin.register Evento do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params :name, :tipo, :date, :theme, :description



form do |f|
  f.inputs do
      f.input :name
      f.input :tipo
      f.input :date
      f.input :theme
      f.input :description
    f.submit
  end
end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
