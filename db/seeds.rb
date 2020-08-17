require 'net/http'

Comment.destroy_all
Animal.destroy_all 
User.destroy_all 

ANIMAL_URL = 'https://acnhapi.com/v1a/villagers/'

def get_animals(animal_url)
    uri = URI.parse(animal_url)
    response = Net::HTTP.get_response(uri)
    animal_obj = JSON.parse(response.body)
    # byebug 
    animal_obj.each do |characters|
        # byebug
        name = characters["name"]["name-USen"]
        Animal.create(name: name, image_url: characters["image_uri"], personality: characters["personality"], quote: characters["saying"], icon_url: characters["icon_uri"], species: characters["species"])
    end 
    # byebug
end 

get_animals(ANIMAL_URL) 

User.create(name: "User 1")

# 100.times do 
# Comment.create({animal_id: Animal.all.sample.id, user_id: User.all.sample.id, text: "hello"})
# end 





