class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :admin, :teacher, :student]
  after_initialize :set_default_role, :if => :new_record?

  has_one_attached :avatar
  has_one_attached :signature

  has_one :student_profile, dependent: :destroy, autosave: true
  accepts_nested_attributes_for :student_profile

  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
              file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  validates :signature, file_size: { less_than_or_equal_to: 5.megabytes },
              file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }

  def set_default_role
    self.role ||= :user
  end
end
