json.extract! @party, :name


#guests is already the array


json.guests @party.guests do |guest|
  json.name guest.name
  json.age guest.age
  json.gifts guest.gifts do |gift|
    json.title gift.title
  end
end






# json.array! @party.guests do |guest|
#   json.guest guest
#   json.guest_gifts guest.gifts
# end


# json.guests @party.guests
