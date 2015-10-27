require 'rails_helper'

describe Neighborhood do
  it { should validate_presence_of :name }
  it { should validate_presence_of :quadrant }
end
