ActiveAdmin.register Sireline do

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
    column :id do |line|
      link_to line.id, admin_line_path(line)
    end
    column :name do |line|
      link_to line.name, admin_line_path(line)
    end
  end

  show do |f|
    panel "Subject" do
      attributes_table_for f, :id, :name, :parent_line_id
    end
  end

end
