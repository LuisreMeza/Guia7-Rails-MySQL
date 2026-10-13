# Guía 7: Ruby on Rails con MySQL

Repositorio con los dos proyectos desarrollados para la Guía 7 de Ruby on Rails, utilizando MySQL como motor de base de datos, TDD con RSpec/Shoulda Matchers y BDD con Capybara.

## Objetivos Cumplidos

- Configurar Ruby on Rails para usar MySQL como motor de base de datos
- Comprobar el funcionamiento de la aplicación usando MySQL
- Realizar validaciones de scaffold usando TDD
- Comprobar el funcionamiento de la aplicación utilizando BDD

## Proyectos

### App_mysql (Práctica de la Guía)

- **Base de datos:** `RoR`
- **Modelo:** `User`
- **Campos:** name, password, email, programador, birthday, work_time
- **Validaciones:**
  - `name`: presencia, solo letras, máximo 15 caracteres
  - `password`: presencia, exactamente 8 caracteres
  - `email`: presencia, único, formato con @

### App_estudiante (Ejercicio Propuesto)

- **Base de datos:** `Datos_estudiante`
- **Modelo:** `Estudiante`
- **Campos:** nombres, apellidos, carrera, carnet
- **Validaciones:**
  - `nombres`: presencia, solo letras
  - `apellidos`: presencia, solo letras
  - `carrera`: presencia
  - `carnet`: presencia, único, exactamente 7 dígitos

## Cómo Ejecutar

### Para App_mysql:
```bash
cd App_mysql
bundle install
rails db:create
rails db:migrate
rails s