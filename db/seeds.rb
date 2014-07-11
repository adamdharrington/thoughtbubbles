# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


bubbles = Bubble.create([{
						id : 1,
						shares : 0,
						image : "images.jpg",
						thought : "Leonora Carrington made insane art... literally.",
						url : "http://www.imma.ie/en/page_236722.htm"
					},{
						id : 2,
						shares : 0,
						image : "images2.jpg",
						thought : "Found often amongst troops and superhero teams, the Sad Clown is the wisecracking funnyman who copes with his hopeless position with humor.",
						url : "http://tvtropes.org/pmwiki/pmwiki.php/Main/SadClown"
					},{
						id : 3,
						shares : 0,
						image : "yinyang.jpg",
						thought : "The Philosophy of Yin and Yang",
						url : "http://www.sacredlotus.com/theory/yinyang.cfm"
					},{
						id : 4,
						shares : 0,
						image : "canabalism.jpg",
						thought : "Face chewing and other acts of cannibalism in the 21st century. Could this solve world hunger and over population in one fell swoop?",
						url : "http://www.examiner.com/article/face-chewing-penis-eating-and-other-acts-of-cannibalism-the-21st-century"
					},{
						id : 5,
						shares : 0,
						image : "ocaptain.jpg",
						thought : "O Captain! My Captain! rise up and hear the bells;",
						url : "http://www.poetryfoundation.org/poem/174742"
					},{
						id : 6,
						shares : 0,
						image : "ocaptain.jpg",
						thought : "O Captain! My Captain! rise up and hear the bells;",
						url : "http://www.poetryfoundation.org/poem/174742"
					}])