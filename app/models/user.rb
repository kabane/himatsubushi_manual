class User < ApplicationRecord
  has_many :auth
  has_many :contents
end
