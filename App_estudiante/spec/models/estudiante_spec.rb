require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  # Subject válido para que Shoulda pueda probar las validaciones
  subject do
    Estudiante.new(
      nombres: "Juan",
      apellidos: "Perez",
      carrera: "Ingeniería",
      carnet: "1234567"
    )
  end

  before { subject.save }

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
    # Indicamos que la unicidad no distingue mayúsculas/minúsculas
    it { should validate_uniqueness_of(:carnet).case_insensitive }
    # Indicamos que esperamos el mensaje de error personalizado
    it { should validate_length_of(:carnet).is_equal_to(7).with_message("debe tener 7 dígitos") }
  end
end