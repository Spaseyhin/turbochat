class Like < ApplicationRecord
	belongs_to :user
	belongs_to :message, counter_cache: true
end
