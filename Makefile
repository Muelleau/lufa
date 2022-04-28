
launch:
	docker build -t lufa .
	docker run -p 8080:8080 lufa

launchredis:
	docker run -p 6379:6379 redis:6.2-alpine