# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  place      :string
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  creator_id :integer
#
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees
  has_many :attendees, through: :event_attendees, source: :attendee

  def self.future
    self.where('date > ?', Date.current)
  end

  def self.past
    self.where('date < ?', Date.current).or(self.where(date: nil))
  end

  def self.today
    self.where('date == ?', Date.current)
  end
end
