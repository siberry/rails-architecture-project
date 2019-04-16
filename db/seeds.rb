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
