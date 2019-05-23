class Article < ApplicationRecord
    validates :title, presence: true#means that the body is necessary
    validates :body, presence: true
end
