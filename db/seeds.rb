Building.destroy_all
Element.destroy_all
BuildingElement.destroy_all
Architect.destroy_all

# Building - name, location_id, imgurl, architect_id
# Element - name
# BuildingElement - building_id, element_id

wright = Architect.create(name: "Frank Lloyd Wright")
  millrun = Location.create(city: "Mill Run", state: "Pennsylvania", continent: "North America")
    Building.create(name: "Falling Water", location: millrun, architect: wright, imgurl: '/assets/fallingwater.jpg')
  nyc = Location.create(city: "New York", state: "New York", continent: "North America")
    Building.create(name: 'Guggenheim Museum', location: nyc, imgurl: '/assets/guggenheim.jpg', architect: wright)
  losangeles = Location.create(city: "Los Angeles", state: "California", continent: "North America")
    Building.create(name: 'Hollyhock House', location: losangeles, imgurl: '/assets/hollyhock.jpg', architect: wright)

barcelona = Location.create(city: "Barcelona", country: "Spain", continent: "Europe")
  guadi = Architect.create(name: "Antoni Gaudí")
    Building.create(name: "Park Güell", location: barcelona, architect: guadi, imgurl: '/assets/parkguell.jpg')
    Building.create(name: "Casa Milà", location: barcelona, architect: guadi, imgurl: '/assets/casamila.jpg')
    Building.create(name: "Casa Vicens", location: barcelona, architect: guadi, imgurl: '/assets/vicens.jpg')
  mies = Architect.create(name: "Ludwig Mies van der Rohe")
    Building.create(name: "Barcelona Pavilion", location: barcelona, architect: mies, imgurl: '/assets/barcelonapavilion.jpg')

  #more Mies
  Building.create(name: "Seagram Building", location: nyc, architect: mies, imgurl: '/assets/seagram.jpg')
