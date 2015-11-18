ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :email, :avatar, photos_attributes: [:image, :caption]
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
    f.has_many :photos do |p|
        p.input :image, :as => :file, :hint => p.template.image_tag(p.object.image.url(:thumb)), :label => "Imagem"
        #link_to 'remove', remove_image(p), :confirm => "Are you sure?", :method => :delete
        #p.input :caption, :label => "Título" 

    end
  end
  f.actions
end


end
