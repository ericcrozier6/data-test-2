curl "https://overpass-api.de/api/interpreter?data=%5Bout%3Acsv%28%27name%27%2C%3A%3Alat%2C%3A%3Alon%3Btrue%3B%27%2C%27%29%5D%3B%0A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%2F%2Fcould%20do%20%27cuisine%27%20after%20lon%20before%20true%20%0Aarea%0A%20%20%5B%22wikidata%22%20%3D%22Q34804%22%5D%0A%20%20%5B%22name%22%3D%22Albuquerque%22%5D-%3E.a%3B%0A%20%20%0Anwr%5B%22amenity%22%3D%22restaurant%22%5D%28area.a%29%3B%0A%20%0Aout%20body%20center%3B%0A" --output data.csv

#https://www.google.com/maps/d/edit?mid=1WhzfLmoIjm5BA_8s1munnOBUqDzU3zI&usp=sharing

#curl "https://www.google.com/maps/d/edit?mid=1WhzfLmoIjm5BA_8s1munnOBUqDzU3zI&usp=sharing&forcekml=1" --output data1.kml
curl "https://www.google.com/maps/d/kml?mid=1WhzfLmoIjm5BA_8s1munnOBUqDzU3zI&forcekml=1" --output data1.kml
