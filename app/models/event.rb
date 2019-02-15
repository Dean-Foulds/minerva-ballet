class Event < ApplicationRecord
    extend SimpleCalendar
    extend FriendlyId
    friendly_id :description, use: :slugged
end
