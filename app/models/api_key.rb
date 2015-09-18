class ApiKey < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  before_create :generate_access_token
private

def generate_access_token
  begin
    self.access_token = SecureRandom.hex
  end while self.class.exists?(access_token: access_token)
end
end
