# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  roles                  :string
#  first_name             :string
#  last_name              :string
#  gender                 :string
#  address                :string
#  city                   :string
#  state                  :string
#  country                :string
#  zipcode                :string
#  mobile_reset_token     :string
#

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :gender, :address, :city, :state, :country, :zipcode, :role, :image_url
  has_many :stores

  def gender
    object.gender || User::GENDERS[0]
  end
end
