ActiveAdmin.register Nick do
  config.sort_order = "male_id_asc"
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

  index do
    column :id
    column '種牡馬', :male_id
    column '繁殖牝馬', :female_id
    column '種牡馬', Line.find_by_id(activerecord.attributes.nick.male_id).name
    column '繁殖牝馬', :female_id
    column '種牡馬', Line.find_by_id(:female_id).name
  end

end
