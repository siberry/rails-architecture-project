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
  pennsylvania = Location.create(state: "Pennsylvania", continent: "North America")
    Building.create(name: "Falling Water", location: pennsylvania, architect: wright, imgurl: '/assets/fallingwater.jpg')
  nyc = Location.create(city: "New York", state: "New York", continent: "North America")
    Building.create(name: 'Guggenheim Museum', location: nyc, imgurl: '/assets/guggenheim.jpg', architect: wright)
  losangeles = Location.create(city: "Los Angeles", state: "California", continent: "North America")
    Building.create(name: 'Hollyhock House', location: losangeles, imgurl: '/assets/hollyhock.jpg', architect: wright)
johnson = Architect.create(name: "Philip Johnson")
  Building.create(name: "PPG Palace", location: pennsylvania, architect: johnson, imgurl: '/assets/ppgpalace.jpg')
kahn = Architect.create(name: "Louis Kahn")
  Building.create(name: "Fisher House", location: pennsylvania, imgurl: '/assets/fisherhouse.jpg', architect: kahn)


barcelona = Location.create(city: "Barcelona", country: "Spain", continent: "Europe")
  guadi = Architect.create(name: "Antoni Gaudí")
    Building.create(name: "Park Güell", location: barcelona, architect: guadi, imgurl: '/assets/parkguell.jpg')
    Building.create(name: "Casa Milà", location: barcelona, architect: guadi, imgurl: '/assets/casamila.jpg')
    Building.create(name: "Casa Vicens", location: barcelona, architect: guadi, imgurl: '/assets/vicens.jpg')
  mies = Architect.create(name: "Ludwig Mies van der Rohe")
    Building.create(name: "Barcelona Pavilion", location: barcelona, architect: mies, imgurl: '/assets/barcelonapavilion.jpg')

burnham = Architect.create(name: "Daniel Burnham")

  Building.create(name: "Seagram Building", location: nyc, architect: mies, imgurl: '/assets/seagram.jpg')
  Building.create(name: "Flatiron Building", location: nyc, architect: burnham, imgurl: '/assets/flatiron.jpg')
