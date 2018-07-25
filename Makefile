

subdirs = 1.1 \
          1.3.1 \
          1.9

LATEST=1.9

.PHONY: $(subdirs)

all: $(subdirs)
build: $(subdirs)
test: $(subdirs)
clean: $(subdirs)

$(subdirs):
	$(MAKE) -C $@  $(MAKECMDGOALS) LATEST=$(LATEST)
	

