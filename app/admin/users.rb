# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  user_name              :string(255)
#  date_of_birth          :date
#  gender                 :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#


ActiveAdmin.register User do
  menu :priority => 3
  index do
    selectable_column
    column :user_name
    column :score
    column :email
    column :date_of_birth
    column :gender
    column :sign_in_count
    column :current_sign_in_ip
    default_actions
  end

  form do |f|
    f.inputs "User Details" do 
      f.input :user_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end  
end
