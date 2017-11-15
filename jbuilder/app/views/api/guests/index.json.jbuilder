json.array! @guests do |guest1|

  #we are making an array of json objects,
  #json.name sets each object's "name" key
  #to whatever value it finds in guest.name

  # json.name guest.name
  # json.favorite_color guest.favorite_color
  # json.age guest.age

  json.partial! 'guest.json.jbuilder', guest: guest1

end
