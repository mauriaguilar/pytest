build-and-test:
	docker build -t testing:v1 .
	docker run -it testing:v1

enter:
	docker run -it testing:v1 sh