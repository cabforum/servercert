LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

.PHONY: docs deploy all clean

all: deploy

docs:
	$(MAKE) -C docs
	$(MAKE) -C assets
	$(MAKE) -C output

deploy: docs
	$(MAKE) -C docs deploy
	$(MAKE) -C assets deploy
	$(MAKE) -C output deploy

clean:
	$(MAKE) -C docs clean 
	$(MAKE) -C assets clean
	$(MAKE) -C output clean 
