class Story < ApplicationRecord
  valiidates :name, :link, presence: true
end
