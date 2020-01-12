class Zone < ApplicationRecord
  belongs_to :farm
  belongs_to :seed
end
