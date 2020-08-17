


ANIMAL_URL = 'https://acnhapi.com/v1a/villagers/'

def get_animals(animal_url)
    uri = URI.parse(animal_url)
    response = NET::HTTP.get_response(uri)
    animal_obj = JSON.parse(response.body)
    animal_obj.each do |characters|
        characters.create(name: characters[])
    end 
end 

