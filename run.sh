
#Curl overpass api 
curl "https://overpass-api.de/api/interpreter?data=%5Bout%3Acsv%28%27name%27%2C%3A%3Alat%2C%3A%3Alon%3Btrue%3B%27%2C%27%29%5D%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%2F%2Fcould%20do%20%27cuisine%27%20after%20lon%20before%20true%20%0Aarea%0A%20%20%5B%22wikidata%22%20%3D%22Q34804%22%5D%0A%20%20%5B%22name%22%3D%22Albuquerque%22%5D-%3E.a%3B%0A%20%20%0Anwr%5B%22amenity%22%3D%22restaurant%22%5D%28area.a%29%3B%0A%20%0Aout%20body%20center%3B%0A" --output data.csv

#Yay first map made, lets curl it into a kml file 
curl "https://www.google.com/maps/d/kml?mid=1WhzfLmoIjm5BA_8s1munnOBUqDzU3zI&forcekml=1" --output data1.kml

#Ogre to Ogre. You need /vsicurl/ at the front before https:// for this to work 
#This will put it into a parquet file 
ogr2ogr data.parquet "/vsicurl/https://services9.arcgis.com/RHVPKKiFTONKtxq3/arcgis/rest/services/USGS_Seismic_Data_v1/FeatureServer/0/query?f=geojson&where=1%3D1&returnGeometry=true&spatialRel=esriSpatialRelIntersects&outFields=*&orderByFields=mag%20DESC&outSR=3857&resultOffset=0&resultRecordCount=10000"


#In order to get this link, view a different file (like run.sh) as raw, then replace run.sh with data.parquet at the end of the link 
#In duckdb you can view the parquet file like this:
#CREATE VIEW data AS SELECT * FROM read_parquet("https://raw.githubusercontent.com/ericcrozier6/data-test-2/main/data.parquet");

#Then look at the data
#DESCRIBE data 

#SELECT * from data 
#LIMIT 3;
