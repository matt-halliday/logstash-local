NO_COLOR=$(shell tput sgr0)
GREEN=$(shell tput bold)$(shell tput setaf 2)

DC = docker-compose
DCE = ${DC} exec

default: start

start:
	@echo '${GREEN}Starting logstash${NO_COLOR}'
	@${DC} up -d --force-recreate && ./wait.sh

clear:
	@echo '${GREEN}Clearing logs${NO_COLOR}'
	@echo > ./input.txt
	@echo > ./output.json

rm:
	@echo '${GREEN}Removing container and cleaning up${NO_COLOR}'
	@${DC} down -v --remove-orphans
	@docker system prune --volumes -f
