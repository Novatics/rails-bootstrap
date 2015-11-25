ActiveAdmin.register Photo do

  belongs_to :user
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


  sortable # creates the controller action which handles the sorting
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  config.paginate   = false # optional; drag-and-drop across pages is not supported


  index do
    sortable_handle_column # inserts a drag handle
    column :position
    column :image do |p|
    	image_tag(p.image.url(:thumb))
    end
  end

end
