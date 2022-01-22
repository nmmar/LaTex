build:
	docker build . -t schickling/latex 
	
run:
	docker run --name latex --rm -it -v $$(pwd):/source schickling/latex 

stop:
	docker stop latex
	docker rm latex

clean:
	rm *.aux *.log *.out