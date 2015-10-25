require 'rails_helper'

describe Listing do
  it { should belong_to :user }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
