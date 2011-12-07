require 'spec_helper'

describe Registration do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
end
