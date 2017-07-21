## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

## question 1 answer ##

def get_pokemon(arr, pokemon_name)
  arr.find do |pokemon|
    pokemon if pokemon[:name] == pokemon_name
  end
end

bulbasaur = get_pokemon(pokemon, "bulbasaur")

def get_abilities(hash)
  hash[:abilities]
end

abilities = get_abilities(bulbasaur)

def find_url(arr)
  arr.each do |item|
    item.each do |key, value|
      if key == :ability
        return value[:url]
      end
    end
  end
end

#puts find_url(abilities)

## END ##

## Question 2 answer ##

def base_experience_40(arr)
  arr.each do |hash|
    hash.find do |key, value|
      if key == :base_experience && value > 40
        return hash[:name]
      end
    end
  end
end

# puts base_experience_40(pokemon)

## END ##

## Question 3 ##

def base_experience_40_all(arr)
  names = []

  arr.each do |hash|
    hash.each do |key, value|
      if key == :base_experience && value > 40
        names << hash[:name]
      end
    end
  end
  names
end

# puts base_experience_40_all(pokemon)

## END ##

## Question 4 ##

def all_names(arr)
  names = []

  arr.each do |hash|
    names << hash[:name]
  end
  names
end

# puts all_names(pokemon)
## END ##

## Question 5 ##

def weight_over_60?(arr)
  condition = false
  arr.each do |el|
    if el[:weight] > 60
      condition = true
    end
  end
  condition
end

# puts weight_over_60?(pokemon)

## END ##

# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
