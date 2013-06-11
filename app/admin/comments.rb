ActiveAdmin.register Comment, :as => "UserComment" do
  menu :priority => 5
  filter :user, :collection => proc {(User.all).map{|u| [u.user_name, u.id]}}
  form do |f|
    f.inputs "User Comment" do
      f.input :user
      f.input :picture
      f.input :body
    end
    f.actions
  end
end
