#AUTHOR : KHALID BOUYCHOU
#LOGIN  : khbouych

YMLFILE = docker-compose -f srcs/docker-compose.yml up -d --build
DOWN = docker-compose -f srcs/docker-compose.yml  down
CLEAN = docker system prune -a
FORBIDDENFILES = all down clean re
RESET = clean all

all :
	 $(YMLFILE)

down : clean

clean :
	$(DOWN) $(CLEAN)

re : $(RESET)

.PHONY : $(FORBIDDENFILES)