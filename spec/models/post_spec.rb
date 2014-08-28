require 'spec_helper'

FactoryGirl.create(:post).should be_valid

describe Post do
  it "is invalid without a firstname"
  it "is invalid without a heheh"
  it "is invalid without a firasdfasdfstname"
end