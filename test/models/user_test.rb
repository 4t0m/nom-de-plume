# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  fname                    :string           not null
#  lname                    :string           not null
#  email                    :string           not null
#  password_digest          :string           not null
#  session_token            :string           not null
#  profile_pic_url          :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  gender                   :string
#  home_town                :string
#  relationship             :string
#  workplace                :string
#  cover_pic_url            :string
#  birthday                 :date
#  school                   :string
#  current_city             :string
#  profile_pic_file_name    :string
#  profile_pic_content_type :string
#  profile_pic_file_size    :integer
#  profile_pic_updated_at   :datetime
#  cover_pic_file_name      :string
#  cover_pic_content_type   :string
#  cover_pic_file_size      :integer
#  cover_pic_updated_at     :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
