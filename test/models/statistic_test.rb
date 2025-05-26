# == Schema Information
#
# Table name: statistics
#
#  id                     :integer          not null, primary key
#  points                 :integer
#  number_of_answers      :integer
#  number_of_questions    :integer
#  number_of_best_answers :integer
#  user_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class StatisticTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
