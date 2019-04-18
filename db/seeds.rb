Building.destroy_all
Element.destroy_all
BuildingElement.destroy_all
Architect.destroy_all
Location.destroy_all
User.destroy_all
UserBuilding.destroy_all

# Building - name, location_id, imgurl, architect_id
# Element - name
# BuildingElement - building_id, element_id

wright = Architect.create(name: "Frank Lloyd Wright")
dattner = Architect.create(name: "Dattner Architects")
johnson = Architect.create(name: "Philip Johnson")
kahn = Architect.create(name: "Louis Kahn")
guadi = Architect.create(name: "Antoni Gaudí")
mies = Architect.create(name: "Ludwig Mies van der Rohe")
burnham = Architect.create(name: "Daniel Burnham")
henri = Architect.create(name: "Henri Labrouste")

california = Location.create(state: "California", continent: "North America")
pennsylvania = Location.create(state: "Pennsylvania", continent: "North America")
nyc = Location.create(city: "New York", state: "New York", continent: "North America")
bangladesh = Location.create(country: "Bangladesh", continent: "Asia")
barcelona = Location.create(city: "Barcelona", country: "Spain", continent: "Europe")
paris = Location.create(city: "Paris", country: "France", continent: "Europe")

falling_water = Building.create(name: "Falling Water", location: pennsylvania, architect: wright, imgurl: '/assets/fallingwater.jpg')
guggenheim = Building.create(name: 'Guggenheim Museum', location: nyc, imgurl: '/assets/guggenheim.jpg', architect: wright)
hollyhock = Building.create(name: 'Hollyhock House', location: california, imgurl: '/assets/hollyhock.jpg', architect: wright)
salt = Building.create(name: 'Spring Street Salt Shed', location: nyc, imgurl: '/assets/salt.jpg', architect: dattner)
ppg = Building.create(name: "PPG Palace", location: pennsylvania, architect: johnson, imgurl: '/assets/ppgpalace.jpg')
fisher = Building.create(name: "Fisher House", location: pennsylvania, imgurl: '/assets/fisherhouse.jpg', architect: kahn)
salk= Building.create(name: "Salk Institute", location: california, architect: kahn, imgurl: '/assets/salk.jpg')
sher = Building.create(name: "Sher-e-Bangla Nagar (National Assembly Hall)", location: bangladesh, architect: kahn, imgurl: '/assets/nationalassembly.jpg')
guell = Building.create(name: "Park Güell", location: barcelona, architect: guadi, imgurl: '/assets/parkguell.jpg')
mila = Building.create(name: "Casa Milà", location: barcelona, architect: guadi, imgurl: '/assets/casamila.jpg')
vicens = Building.create(name: "Casa Vicens", location: barcelona, architect: guadi, imgurl: '/assets/vicens.jpg')
pavilion = Building.create(name: "Barcelona Pavilion", location: barcelona, architect: mies, imgurl: '/assets/barcelonapavilion.jpg')
seagram = Building.create(name: "Seagram Building", location: nyc, architect: mies, imgurl: '/assets/seagrambldg.jpg')
flatiron = Building.create(name: "Flatiron Building", location: nyc, architect: burnham, imgurl: '/assets/flatiron.jpg')
frenchlibrary = Building.create(name: "Sainte-Geneviève Library", location: paris, architect: henri, imgurl: '/assets/frenchlibrary.jpg')

concrete = Element.create(name: "concrete")
geometric = Element.create(name: "geometric")
water = Element.create(name: "water")
forest = Element.create(name: "forest")
museum = Element.create(name: "museum")
organic = Element.create(name: "organic")
contemporary = Element.create(name: "contemporary")
glass = Element.create(name: "glass")
wood = Element.create(name: "wood")
stone = Element.create(name: "stone")
skyscraper = Element.create(name: "skyscraper")
steel = Element.create(name: "steel")
beaux = Element.create(name: "Beaux-Arts")
nouveau = Element.create(name: "Art Nouveau")



falling_water.elements << [water, forest, geometric, organic, stone, concrete, steel]
guggenheim.elements << [geometric, museum, concrete]
hollyhock.elements << [concrete, organic]
salt.elements << [concrete, geometric, contemporary]
ppg.elements << [glass, skyscraper]
fisher.elements << [geometric, wood, stone]
salk.elements << [concrete, water]
sher.elements << [concrete, geometric, water]
guell.elements << [organic]
mila.elements << [stone, organic]
vicens.elements << [glass, concrete]
pavilion.elements << [geometric, water, concrete, glass]
seagram.elements << [glass, skyscraper]
flatiron.elements << [skyscraper, steel, beaux]
frenchlibrary.elements << [beaux, steel, stone]
