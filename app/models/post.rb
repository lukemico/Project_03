# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  date       :string
#  title      :string
#  content    :text
#  time       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
end
