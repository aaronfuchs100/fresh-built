# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  company         :string(255)
#  company_id      :integer
#  order_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  def self.filter(query)
    self.where("region @@ :q", :q => query)
  end

end
