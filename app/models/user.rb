class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.first_name = auth['info']['first_name'] || ""
         user.last_name = auth['info']['last_name'] || ""
         user.avatar = auth['info']['avatar'] || ""
      end
      
    end
  end

end
