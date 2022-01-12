all: binary

binary:
	go build -o bin/helloworld go-helloworld/main.go

clean:
	rm -rf bin/*