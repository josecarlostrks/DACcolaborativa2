docker build -t projeto/bd ./postgres
docker run -p 5433:5432 --name bd -d projeto/bd 

cd segundoprojeto && mvn clean package && cd ..
docker build -t projeto/dac ./segundoprojeto
docker run -p 8080:8080 --name dac -d --link bd:host-banco projeto/dac
# echo 'fim'



