class Micropost < ApplicationRecord
  belongs_to :user
  # uses Proc/lambda - anon function evaluated w call method
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  # custom validation
  validate :picture_size

  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, 'should be less than 5MB')
      end
    end
end
