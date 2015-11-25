ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :email, :avatar, :avatar_cache, photos_attributes: [:image, :image_cache, :caption]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  
  member_action :view_photos, method: :get do
    @photos = resource.photos
    redirect_to admin_user_photos_path(resource)
  end
  filter :name  
  filter :email  

  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  config.paginate   = false # optional; drag-and-drop across pages is not supported

  sortable # creates the controller action which handles the sorting

  index do
    sortable_handle_column # inserts a drag handle
    id_column
    column :position
    column :name
    column :email
    column :created_at
    actions do |id|
    link_to 'Ver fotos', {:action => :view_photos, :id => id }, :method => :get
    end
  end
  show do
    attributes_table do
      row :name
      row :email
      row :images do
        render :partial => "gallery", :locals => {:user => user }
      end
      
      row :avatar do
        image_tag(user.avatar.url, size: "300x300")
      end
    end
    
  end
  

  form do |f|
  f.semantic_errors 
  f.inputs 'Campos', :multipart => true do
    f.input :name
    f.input :email
    f.input :avatar, :as => :file, :hint => f.template.image_tag(f.object.avatar.url(:thumb)), :label => "Imagem"
    f.input :avatar_cache, :as => :hidden 
    f.has_many :photos do |p|
        p.input :image, :as => :file, :hint => image_tag(p.object.image.url(:thumb)), :label => "Imagem"
        #link_to 'remove', remove_image(p), :confirm => "Are you sure?", :method => :delete
        #p.input :caption, :label => "Título" 

    end

  end
  f.actions
end


end
