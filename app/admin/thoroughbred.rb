ActiveAdmin.register Thoroughbred do
  config.sort_order = "id_asc"

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
    selectable_column
    column :having
    rank_column :rank
    column :name do |thoroughbred|
      link_to thoroughbred.name, admin_thoroughbred_path(thoroughbred)
    end
    gender_column :gender
    column :sireline1_id do |thoroughbred|
      line = Sireline.find_by_id(thoroughbred.sireline1_id)
      line.name + "系"
    end
    growth_column :growth
    course_column :course
    column :low
    column :up
    rank_column :speed
    rank_column :stamina
    rank_column :sharp
    rank_column :guts
    rank_column :temper
    rank_column :deft
    rank_column :power
    rank_column :explosion
  end

  show do |f|
    panel "Subject" do
      attributes_table_for f do
        row :id
        row :name
        rank_row :rank
        gender_row :gender
        row :sireline1_id do |thoroughbred|
          line = Sireline.find_by_id(thoroughbred.sireline1_id)
          line.name + "系"
        end
        growth_row :growth
        course_row :course
        row :low
        row :up
        rank_row :speed
        rank_row :stamina
        rank_row :sharp
        rank_row :guts
        rank_row :temper
        rank_row :deft
        rank_row :power
        rank_row :explosion
      end
    end
    panel "ニックス" do
      attributes_table_for f do
        # 自分の系統
        row :sireline1_id do |thoroughbred|
           line = Sireline.find_by_id(thoroughbred.sireline1_id)
           line.name + "系"
        end
        # 相手の系統
        row "test" do |thoroughbred|
          nicks = Nick.where(male_id: thoroughbred.sireline1_id)
          nicks.each{|nick|
            l = Sireline.find(nick.female_id)
            attributes_table_for l do
              row :name
            end if l.present?
          }
        end
      end
    end
  end

end
