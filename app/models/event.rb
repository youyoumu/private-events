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
  belongs_to :user, foreign_key: 'creator_id'
end
