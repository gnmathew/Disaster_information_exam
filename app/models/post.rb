class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :address, presence: true

  belongs_to :user

  def destroy
    update(deleted_at: Time.current)
  end
end
