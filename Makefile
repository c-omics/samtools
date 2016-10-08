

subdirs = 1.1 \
          1.3.1

LATEST=1.3.1

.PHONY: $(subdirs)

all: $(subdirs)
build: $(subdirs)
test: $(subdirs)
clean: $(subdirs)

$(subdirs):
	$(MAKE) -C $@  $(MAKECMDGOALS) LATEST=$(LATEST)
	

