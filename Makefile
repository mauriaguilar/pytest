output?=> /dev/null
errors?=2> /dev/null

build-and-test:
	@docker-compose build ${output} ${errors}
	@docker-compose up ${errors}
	# @docker-compose down ${output} ${errors}

debug:
	@make build-and-test output="" errors="" 

enter:
	@docker-compose build ${output} ${errors}
	docker run -it -name testing testing:latest sh
