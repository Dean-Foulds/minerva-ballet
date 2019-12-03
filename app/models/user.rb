class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  mount_uploader :photo, PhotoUploader
  # after_create :subscribe_to_newsletter
  extend FriendlyId
  friendly_id :first_name, use: :slugged

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private


  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end


  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
