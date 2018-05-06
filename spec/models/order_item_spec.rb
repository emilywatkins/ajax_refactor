require 'rails_helper'

describe OrderItem do
  it do
    should validate_numericality_of(:quantity).
      is_greater_than(0)
  end
end
