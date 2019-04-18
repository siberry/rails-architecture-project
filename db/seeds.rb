Building.destroy_all
Element.destroy_all
BuildingElement.destroy_all
Architect.destroy_all
Location.destroy_all
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

california = Location.create(state: "California", continent: "North America")
pennsylvania = Location.create(state: "Pennsylvania", continent: "North America")
nyc = Location.create(city: "New York", state: "New York", continent: "North America")
bangladesh = Location.create(country: "Bangladesh", continent: "Asia")
barcelona = Location.create(city: "Barcelona", country: "Spain", continent: "Europe")

Building.create(name: "Falling Water", location: pennsylvania, architect: wright, imgurl: '/assets/fallingwater.jpg')
Building.create(name: 'Guggenheim Museum', location: nyc, imgurl: '/assets/guggenheim.jpg', architect: wright)
Building.create(name: 'Hollyhock House', location: california, imgurl: '/assets/hollyhock.jpg', architect: wright)
Building.create(name: 'Spring Street Salt Shed', location: nyc, imgurl: '/assets/salt.jpg', architect: dattner)
Building.create(name: "PPG Palace", location: pennsylvania, architect: johnson, imgurl: '/assets/ppgpalace.jpg')
Building.create(name: "Fisher House", location: pennsylvania, imgurl: '/assets/fisherhouse.jpg', architect: kahn)
Building.create(name: "Salk Institute", location: california, architect: kahn, imgurl: '/assets/salkinstitute.jpg')
Building.create(name: "Sher-e-Bangla Nagar (National Assembly Hall)", location: bangladesh, architect: kahn, imgurl: '/assets/nationalassembly.jpg')
Building.create(name: "Park Güell", location: barcelona, architect: guadi, imgurl: '/assets/parkguell.jpg')
Building.create(name: "Casa Milà", location: barcelona, architect: guadi, imgurl: '/assets/casamila.jpg')
Building.create(name: "Casa Vicens", location: barcelona, architect: guadi, imgurl: '/assets/vicens.jpg')
Building.create(name: "Barcelona Pavilion", location: barcelona, architect: mies, imgurl: '/assets/barcelonapavilion.jpg')
Building.create(name: "Seagram Building", location: nyc, architect: mies, imgurl: '/assets/seagrambldg.jpg')
Building.create(name: "Flatiron Building", location: nyc, architect: burnham, imgurl: '/assets/flatiron.jpg')
