ActiveAdmin.register Content do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs do
    f.input :title
    f.input :prev, :as => :ckeditor
    f.input :content, :as => :ckeditor
  end
  f.actions
end

controller do
    def permitted_params
      params.permit content: [:title, :prev, :content]
    end
  end

end
