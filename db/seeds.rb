# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Philosopher.create!(name: 'George', birthdate: 'Today', concentration: 'Exestentialism', origin: 'Greece', wikipedia: 'tba', address: '3601 S Congress Ave, Austin, TX 78704')
Philosopher.create!(name: 'Plato', birthdate: 'C. 428 BCE', concentration: 'Philosoher, Rationalist, Writer', origin: 'Greece', wikipedia: 'http://www.biography.com/people/plato-9442588#synopsis', address: 'Athens, Greece')
Philosopher.create!(name: 'Socrates', birthdate: 'C. 470 BCE', concentration: 'Philosopher', origin: 'Greece', wikipedia: 'http://www.biography.com/people/socrates-9488126', address: 'Athens, Greece')
Philosopher.create!(name: 'Martin Heidegger', birthdate: 'September 26, 1889', concentration: 'Philosopher, Hermeneutics, Professor', origin: 'Germany', wikipedia: 'http://www.biography.com/people/martin-heidegger-9333549', address: 'Berlin, Germany')
Philosopher.create!(name: 'Jean-Paul Sartre', birthdate: 'June 21, 1905', concentration: 'Academic, Philosopher, Author, Screenwriter, Journalist, Activist, Literary Critic, Playwright', origin: 'France', wikipedia: 'http://www.biography.com/people/jean-paul-sartre-9472219', address: 'Paris, France')
Philosopher.create!(name: 'Michel Foucault', birthdate: 'Ocotober 15, 1926', concentration: 'Academic, Anthropologist, Philosohper, Journalist, Educator, Scholar, Historian, Activist', origin: 'France', wikipedia: 'http://www.biography.com/people/michel-foucault-9299693', address: 'Poitiers, France')
Philosopher.create!(name: 'Noam Chomsky', birthdate: 'December 7, 1928', concentration: 'Academic, Anit-War, Acticist, Journalist, Linguist', origin: 'United States', wikipedia: 'http://www.biography.com/people/noam-chomsky-37616', address: 'Philadelphia, Pennsylvania')
Philosopher.create!(name: 'Jean-Francois Lyotard', birthdate: 'August 10, 1924', concentration: 'Philosopher', origin: 'France', wikipedia: 'http://www.biography.com/people/jean-francois-lyotard-20702457', address: 'Versailles, France')
Philosopher.create!(name: 'Immanuel Kant', birthdate: 'April 22, 1724', concentration: 'Philosopher', origin: 'Prussia, now Russia', wikipedia: 'http://www.biography.com/people/immanuel-kant-9360144', address: 'Kalingrad, Russia')
Philosopher.create!(name: 'Rene Descartes', birthdate: 'March 31, 1596 - February 11, 1650', concentration: 'Academic, Philosopher, Scientist, Mathematician', origin: 'France', wikipedia: 'http://www.biography.com/people/ren-descartes-37613', address: 'La Haye, Touraine, France')
Philosopher.create!(name: 'Anselmo d\'Aosta', birthdate: '1033 - April 21, 1109', concentration: 'Benedictine monk,Philosopher, Theologian', origin: 'Italy', wikipedia: 'https://en.wikipedia.org/wiki/Anselm_of_Canterbury', address: 'Aosta, Italy')
Philosopher.create!(name: 'John Locke', birthdate: 'August 29, 1632 - October 28, 1704', concentration: 'Philosopher', origin: 'United Kingdom', wikipedia: 'http://www.biography.com/people/john-locke-9384544', address: 'Wrington, United Kingdom')
Philosopher.create!(name: 'Zeno of Elea', birthdate: '490 BC - 430 BC', concentration: 'Philosopher', origin: 'Italy', wikipedia: 'https://en.wikipedia.org/wiki/Zeno_of_Elea', address: 'Velia, Italy')
Philosopher.create!(name: 'Aristotle', birthdate: '348 BC', concentration: 'Empiricist', origin: 'Greece', wikipedia: 'http://www.biography.com/people/aristotle-9188415', address: 'Stagira, Greece')
Philosopher.create!(name: 'Confucius', birthdate: '551 BC in State Lu', concentration: 'Analects', origin: 'China', wikipedia: 'https://www.biography.com/people/confucius-9254926', address: 'Qufu, China')
Philosopher.create!(name: 'FriedRich Nietzsche', birthdate: 'October 15th, 1844', concentration: 'Exestentialism', origin: 'Philosohphy, Author, Writer', wikipedia: 'https://www.biography.com/people/friedrich-nietzsche-9423452', address: 'Röcken bei Lützen, Germany')

p "Created #{Philosopher.count} philosophers"
