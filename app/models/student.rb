class Student < ApplicationRecord



  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Student.exists?(token: random_token)
    end
    self.save
    
  end


end
