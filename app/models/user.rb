class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessible :crypted_password, :email, :first_name, :last_name, :password, :password_confirmation, :password_salt

  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :phrases, foreign_key: :owner_id
  has_many :speakers, foreign_key: :owner_id

  def admin?
    true
  end
end
