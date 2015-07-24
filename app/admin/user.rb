ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :email, :avatar
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  filter :name  
  filter :email  

  index do
    id_column
    column :name
    column :email
    column :created_at
    actions
  end

  form do |f|
  f.semantic_errors 
  f.inputs 'Campos' do
    f.input :name
    f.input :email
    f.input :avatar, :as => :file, :hint => image_tag(f.object.avatar.url(:thumb))  
  end
  f.actions
end


end
