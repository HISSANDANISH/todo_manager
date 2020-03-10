class User < ApplicationRecord
  def to_displayable_user
    "name: #{name} email:#{email} password:#{password}"
  end
end
