require 'unirest'

response = Unirest.get("http://localhost:3000/api/recipes")
puts JSON.pretty_generate(response.body)

response = Unirest.get("http://localhost:3000/api/recipes/1")
puts JSON.pretty_generate(response.body)

response = Unirest.post(
                        "http://localhost:3000/api/recipes", 
                        parameters: {
                                      title: "baked squirrel",
                                      chef: "Uncle billy joe bob",
                                      ingredients: "roadkill",
                                      directions: "walk out to road, pick out what ever is lying around, fry it",
                                      prep_time: 90
                                    }
                          )
puts JSON.pretty_generate(response.body)

recipe_id = 6 
runner_params = {
                  title: "Mud Cake!!!"

                }

response = Unirest.patch(
                         "http//localhost3000/api/recipes/#{recipe_id}",
                         parameters: runner_params
                        )
recipe_hash = response.body
puts JSON.pretty_generate(recipe_hash)

recipe_id = 5
response = Unirest.delete("http://localhost3000/api/recipes/#{recipe_id}")
data = response.body
puts JSON.pretty_generate(data)