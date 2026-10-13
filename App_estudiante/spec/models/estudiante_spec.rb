require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "nombres" do
    it { should validate_presence_of(:nombres) }
    it { should_not allow_value("12345").for(:nombres) }
    it { should allow_value("Juan").for(:nombres) }
  end

  context "apellidos" do
    it { should validate_presence_of(:apellidos) }
    it { should_not allow_value("12345").for(:apellidos) }
    it { should allow_value("Perez").for(:apellidos) }
  end

  context "carrera" do
    it { should validate_presence_of(:carrera) }
  end

  context "carnet" do
    it { should validate_presence_of(:carnet) }
    it { should validate_uniqueness_of(:carnet) }
    it { should validate_length_of(:carnet).is_equal_to(7) }
  end
end