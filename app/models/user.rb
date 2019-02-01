class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  after_create :subscribe_to_newsletter


  def set_default_role
    self.role ||= :user
  end

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
