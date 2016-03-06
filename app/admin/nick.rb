ActiveAdmin.register Nick do
  config.sort_order = "male_id_asc"
  #filter :male_id, as: :select
  #filter :female_id, as: :select

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
    column '種牡馬', :male_id do |s|
      Sireline.find_by_id(s.male_id).try(:name)
    end
    column '繁殖牝馬', :female_id
    column '繁殖牝馬', :femail_id do |s|
      Sireline.find_by_id(s.female_id).try(:name)
    end
  end

end
