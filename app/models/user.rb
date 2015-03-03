class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(provider: auth.provider).first_or_create do |user|
      user.provider = auth.provider 
      user.name     = auth.info.name
      user.save
    end
  end
end