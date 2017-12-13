# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "universidaddes"
Univercity.create(nombre: 'Otros')
Univercity.create(nombre: 'Facultad Torcuato Di Tella')

puts "permisos"
Permit.create(acciones: 'Crear pregunta o respuesta', puntos:'1')
Permit.create(acciones:'Votar positivo en pregunta, respuesta o comentario', puntos:'15')
Permit.create(acciones:'Comentar en cualquier lado' , puntos:'20')
Permit.create(acciones:'Votar negativo' , puntos:'100')
Permit.create(acciones:'Administrar etiquetas' , puntos:'300')
Permit.create(acciones:'Administrar facultades', puntos:'500')
Permit.create(acciones:'Modificar contenidos', puntos:'1000')
puts "label"
Label.create(nombre:'Otras' )
Label.create(nombre:'Otras1' )
Label.create(nombre:'Otras2' )
