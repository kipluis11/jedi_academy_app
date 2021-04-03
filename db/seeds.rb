# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

masters = Master.create([{name: 'Yoda', preferred_sabre_color: 'Green', sabre_style: 'Single Hilt'}, {name: 'Mace Windu', preferred_sabre_color: 'Purple', sabre_style: 'Single Hilt'}, {name: 'Ahsoka Tano', preferred_sabre_color: 'Silver', sabre_style: '2x Single Hilt'}, {name: 'Luke SKywalker', preferred_sabre_color: 'Green', sabre_style: 'Single Hilt'}, {name: 'Jaro Tapal', preferred_sabre_color: 'Blue', sabre_style: 'Double Bladed'}, {name: 'Rey Skywalker', preferred_sabre_color: 'Orange', sabre_style: 'Double Bladed'}, {name: 'Obi Wan', preferred_sabre_color: 'Blue', sabre_style: 'Single Hilt'}, {name: 'Cere Junda', preferred_sabre_color: 'Yellow', sabre_style: '2x Single Hilt'}])
trainings = Training.create([{training_name: 'Master Yoda', master: master.first}, {training_name: 'Master Windu', master: master.second}, {training_name: 'Master Ahsoka', master: master.third}, {training_name: 'Master Luke', master: master.fourth}, {training_name: 'Master Jaro', master: master.fifth}, {training_name: 'Master Rey', master: master.sixth}, {training_name: 'Master Obi Wan', master: master.seventh}, {training_name: 'Master Cere', master: master.eighth}])


t.string :training_name
t.boolean :completed
t.belongs_to :master, null: false, foreign_key: true