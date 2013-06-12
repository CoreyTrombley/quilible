ActiveAdmin.register Picture do
  menu :priority => 4
  index do
    selectable_column
    column :user
    column :achievement
    column :title
    column :url
    default_actions
  end

  show do |picture|
    attributes_table do
      row :user
      row :achievement
      row :title
      row :url do
        image_tag(picture.url, :style => "width:200px")
      end
    end
    active_admin_comments
  end
end
