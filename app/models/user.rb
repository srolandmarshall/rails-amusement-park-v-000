class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
  validates :password, presence: true, on: :create

  def mood
    if self.nausea > self.happiness
      return "sad"
    else
      return "happy"
    end
  end

end
