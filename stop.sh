# parando o container com o nome 'app'
docker stop dac
# revemor o container com o nome 'app'
docker rm dac
#removendo as images
docker rmi -f projeto/dac

docker stop bd
docker rm bd
docker rmi -f projeto/bd
