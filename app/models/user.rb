class User < ApplicationRecord
  validates_presence_of :user_id, :name, :type
end
