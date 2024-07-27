class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
end

class Gossip < ApplicationRecord
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
end
