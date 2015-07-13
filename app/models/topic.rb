class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  scope :visible_to, -> (user) {user ? all : publicly_viewable} # May need to modify this to what the checkpoint calls for if it's important for the overall app
  scope :publicly_viewable, -> { where(public: true) } # May need to delete this from the checkpoint if it's important for the overall app
  scope :privately_viewable, -> { where(public: false) } # May need to delete this from the checkpoint if it's important for the overall app
end
