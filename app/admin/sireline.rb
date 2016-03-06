ActiveAdmin.register Sireline do
  config.sort_order = "name_asc"
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

  permit_params do
    %i(name)
  end

  index do
    selectable_column
    column :id do |sireline|
      link_to sireline.id, admin_sireline_path(sireline)
    end
    column :name do |sireline|
      link_to sireline.name, admin_sireline_path(sireline)
    end
  end

  show do |f|
    panel "Subject" do
      attributes_table_for f, :id, :name, :parent_line_id
    end
  end

end
