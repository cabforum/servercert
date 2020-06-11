LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

.PHONY: docs deploy all clean

all: deploy

docs:
	$(MAKE) -C docs
	$(MAKE) -C assets

pandoc:
  $(MAKE) -C docs br-pandoc

pandoc-deploy:
  $(MAKE) -C docs br-pandoc-deploy

deploy: docs
	$(MAKE) -C docs deploy
	$(MAKE) -C assets deploy

clean:
	$(MAKE) -C docs clean 
	$(MAKE) -C assets clean
	find output/ -mindepth 1 -maxdepth 1 -exec rm -r "{}" "+"
