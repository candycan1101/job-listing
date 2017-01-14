class Job < ApplicationRecord
  validates :title, presence: true
  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order( 'created_at DESC') }
  has_many :resumes

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
