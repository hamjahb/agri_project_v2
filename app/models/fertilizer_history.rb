class FertilizerHistory < ApplicationRecord
  belongs_to :fertilizer
  belongs_to :zone
end
