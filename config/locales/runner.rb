require 'unirest'

response = Unirest.get("http://localhost:3000/api/recipes")
puts JSON