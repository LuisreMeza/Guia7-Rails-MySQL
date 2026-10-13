require 'rails_helper'

feature "Gestión de Estudiantes" do
  scenario "Crear un nuevo estudiante exitosamente" do
    visit new_estudiante_path
    fill_in "Nombres", with: "Pedro"
    fill_in "Apellidos", with: "Perez"
    fill_in "Carrera", with: "Ingeniería"
    fill_in "Carnet", with: "1234567"
    click_button "Create Estudiante"
    expect(page).to have_text("Estudiante was successfully created")
  end

  scenario "Ver la lista de estudiantes y regresar" do
    visit new_estudiante_path
    click_link "Back"
    expect(page).to have_content("Estudiantes")
  end
end