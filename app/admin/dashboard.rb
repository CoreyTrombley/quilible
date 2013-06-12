ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }
  content :title => proc{ I18n.t("active_admin.dashboard") } do
  high_score = User.maximum(:score)
  high_score_user = User.find_by_score(high_score)
  newest_user =User.last
    columns do
      column do
        panel "Highest Score" do
          para "User name: #{high_score_user.user_name}"
          para "Score: #{high_score_user.score}"
        end
      end
      column do
        panel "Newest Member" do
          para "User name: #{newest_user.user_name}"
        end
      end
    end
  end
end
