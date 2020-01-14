library(purrr)

# loads objects: films, people, vehicles, starships, 
# planets & species
load("data/swapi.rda")

# How many elements are in people?
length(people)

# Who is the first person in people?
people[[1]]  # Luke! doble bracket elemento de una lista

# A list inside a list
people[1] # un bracket - elemento de un vector

# A list, dropped one level of heirachy
people[[1]]

# How many starships has each character been on?
map(people, ~ length(.x$starships)) # .x es el placeholder, es la pocision donde cada elemneto de people se va a poner.


# For later
planet_lookup <- map_chr(planets, "name")  %>% set_names(map_chr(planets, "url"))
planet_lookup
save(planet_lookup, file = "data/planet_lookup.rda", compress = FALSE)
