
all: deploy

docs:
	$(MAKE) -C docs 

deploy: docs
	$(MAKE) -C docs deploy

clean:
	$(MAKE) -C docs clean 
	$(MAKE) -C assets clean
	find output/ -mindepth 1 -maxdepth 1 -exec rm -r "{}" "+"
