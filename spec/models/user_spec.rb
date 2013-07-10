require 'spec_helper'

describe User do
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should validate_format_of(:email).to_allow('user@example.com') }
  it { should validate_format_of(:email).not_to_allow('user@') }
  it { should validate_format_of(:email).not_to_allow('user@example') }
  it { should validate_presence_of(:password) }
  it { should validate_length_of(:password).with_minimum(3) }
  it { should validate_confirmation_of(:password) }
end
