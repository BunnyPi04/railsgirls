class Thank < ApplicationRecord
    belongs_to :idea
    validates_presence_of :user_name
end
