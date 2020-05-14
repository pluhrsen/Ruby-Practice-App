class Story < ApplicationRecord
  validates :name, :link, presence: true
  has_many :votes do
    def latest
      order('id DESC').limit(3)
    end
  end
end
