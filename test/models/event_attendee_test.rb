# == Schema Information
#
# Table name: event_attendees
#
#  id          :integer          not null, primary key
#  event_id    :integer          not null
#  attendee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class EventAttendeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
