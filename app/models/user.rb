class User < ApplicationRecord
  belongs_to :province
  belongs_to :usertype
end
