require 'rails_helper'

RSpec.describe User, type: :model do
  # Subject válido para que Shoulda pueda probar las validaciones
  subject do
    User.new(
      name: "Pedro",
      password: "12345678",
      email: "pedro@example.com"
    )
  end

  before { subject.save }

  context "name" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(15) }
    it { should_not allow_value("123123").for(:name) }
    it { should allow_value("abcd").for(:name) }
  end

  context "Password" do
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_equal_to(8) }
  end

  context "email" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should_not allow_value("text").for(:email) }
    it { should allow_value("a@b.com").for(:email) }
  end
end