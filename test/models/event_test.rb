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
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
