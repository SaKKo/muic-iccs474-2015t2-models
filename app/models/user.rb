# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :text
#  last_name  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :posts

  def full_name
    ([] << first_name << last_name).join(" ")
  end
end
