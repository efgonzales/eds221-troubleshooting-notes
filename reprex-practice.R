# Practicing reprex: reproducible examples
# - minimum, viable example of issue you're having
# - must be self-contained

##Not a reprex. Has errors
library(tidyverse)
library(palmerpenguins)

penguins |> 
  select(species, body_mass_g, flipper_length_mm, year) |> 
  filter(species == "Chinstrap") |> 
  mutate(species_lower = str_to_lower(species)) |> 
  group_by(island) |> 
  summarize(mean(body_mass_g, na.rm = TRUE),
            mean(flipper_length_mm, na.rm = TRUE))

##Use as few packages/functions as possible for reprex.
library(tidyverse)

warpbreaks |> 
  str_to_lower(wool)

library(tidyverse)

lower_warp <- warpbreaks |> 
  mutate(wool = str_to_lower(wool))

head(lower_warp)

#reprex with synthesized df
library(tidyverse)

df <- tribble(
  ~month, ~year, ~counts,
  "Aug", 2020, 50,
  "Oct", 2021, 48,
  "Feb", 1997, 28
)

df |> 
  mutate(month = str_to_lower(month))


