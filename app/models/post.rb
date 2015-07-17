# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  topic_id   :integer
#

class Post < ActiveRecord::Base
  has_many :comments
  has_one :summary
  belongs_to :user
  belongs_to :topic

  default_scope { order('created_at DESC') }
end
