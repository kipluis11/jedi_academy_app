# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

masters = Master.create([{name: 'Yoda', preferred_sabre_color: 'Green', sabre_style: 'Single Hilt'}, {name: 'Mace Windu', preferred_sabre_color: 'Purple', sabre_style: 'Single Hilt'}, {name: 'Ahsoka Tano', preferred_sabre_color: 'Silver', sabre_style: '2x Single Hilt'}, {name: 'Luke SKywalker', preferred_sabre_color: 'Green', sabre_style: 'Single Hilt'}, {name: 'Jaro Tapal', preferred_sabre_color: 'Blue', sabre_style: 'Double Bladed'}, {name: 'Rey Skywalker', preferred_sabre_color: 'Orange', sabre_style: 'Double Bladed'}, {name: 'Obi Wan', preferred_sabre_color: 'Blue', sabre_style: 'Single Hilt'}, {name: 'Cere Junda', preferred_sabre_color: 'Yellow', sabre_style: '2x Single Hilt'}])
trainings = Training.create([{training_name: 'Master Yoda', master: masters.first}, {training_name: 'Master Windu', master: masters.second}, {training_name: 'Master Ahsoka', master: masters.third}, {training_name: 'Master Luke', master: masters.fourth}, {training_name: 'Master Jaro', master: masters.fifth}, {training_name: 'Master Rey', master: masters.sixth}, {training_name: 'Master Obi Wan', master: masters.seventh}, {training_name: 'Master Cere', master: masters.eighth}])
Power.create(name: 'Force Push', description: 'Uses the force to push adversaries to the ground as if they were affected by a moderate explosion', training: trainings.all)
Power.create(name: 'Deflect Blaster Fire', description: 'Uses the force to locate and deflect Blaster fire with ones Lightsabre', training: trainings.all)
Power.create(name: 'Manipulate Thoughts', description: "'These aren't the droids you're looking for', Uses the force to manipulate the thoughts of the weak minded", training: trainings.all)
Power.create(name: 'Blaster Absorption', description: 'Uses the force to create a shield that absorbs the energy of blaster weapons.  The user can then reflect this energy back at thier adversaries in a wave of concentrated force power', training: trainings.first)
Power.create(name: 'Nullify Force', description: "Uses the force to nullify the ability of their adversary to use The Force for a short amount of time", training: trainings.seventh)
Power.create(name: 'Intimidates', description: 'Uses the force to bend others to your will' training: trainings.second)
Power.create(name: 'Tempest of Lightning', description: 'Uses the force to unleash an arc of Lightning capable of destroying starships ... super scary' training: trainings.sixth)
Power.create(name: 'Super speed and reflexes', description: 'Uses the force to become, pretty much super human in both speed and dexterity' training: trainings.thisrd)


