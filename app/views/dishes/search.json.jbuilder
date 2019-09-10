json.partial! @locations "dishes/address", locations: @locations

# json.array! @locations do |location|
#   json.lat location.latitude
#   json.lng location.longitude
#   json.title location.location
# end