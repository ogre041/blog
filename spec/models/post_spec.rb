require 'spec_helper'

describe Post do
  it { should validate_presence_of(:title) }
  it "is invalid without a heheh"
  it "is invalid without a firasdfasdfstname"
end