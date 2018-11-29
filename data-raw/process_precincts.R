library(devtools)
library(dplyr)
library(sf)

# This is the Pierce County native projection, defined in their ArcGIS shapefiles
pierce_county_crs <- "+proj=lcc +lat_1=47.33333333333334 +lat_2=45.83333333333334 +lat_0=45.33333333333334 +lon_0=-120.5 +x_0=500000.0001016002 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=us-ft +no_defs"

# Load the precinct shapefiles via the web geojson
election_precincts <- st_read("https://opendata.arcgis.com/datasets/94a20dfdafe94fa882de48d0e5933962_0.geojson")
election_precincts <- st_transform(election_precincts, pierce_county_crs)

election_precincts <- election_precincts %>% rename(
  object_id = OBJECTID,
  precinct = PRECINCT,
  name = NAME,
  legislative = LEGDIST,
  congressional = CONGDIST,
  county_council = CCDIST
) %>% select(
  object_id, precinct, name, legislative, congressional, county_council
) %>% mutate(
  area = st_area(election_precincts)
)

use_data(election_precincts, overwrite=TRUE)
