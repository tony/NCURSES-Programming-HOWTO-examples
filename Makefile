WATCH_FILES=find . -type f -not -path '*/\.*' -and -not -path '*/build/*' | grep -i '.*[.]\(c\|c\|h\)$$' 2> /dev/null

all: build

mkdir_build:
	[ -d ./build ] | mkdir -p build

entr_warn:
	@echo "----------------------------------------------------------"
	@echo "     ! File watching functionality non-operational !      "
	@echo ""
	@echo "Install entr(1) to automatically run tasks on file change."
	@echo "See http://entrproject.org/"
	@echo "----------------------------------------------------------"

build: mkdir_build
	cd build; cmake ..
	make -C build

build_ninja: mkdir_build
	cd build; cmake -GNinja ..
	ninja -C build

debug: mkdir_build
	cd build; cmake -DCMAKE_BUILD_TYPE=Debug ..
	make -C build

debug_ninja: mkdir_build
	cd build; cmake -GNinja -DCMAKE_BUILD_TYPE=Debug ..
	ninja -C build

format:
	clang-format -style=Chromium src/* -i || clang-format37 -style=Chromium src/* -i

watch_debug:
	if command -v entr > /dev/null; then ${WATCH_FILES} | entr sh -c 'clear; $(MAKE) debug'; else $(MAKE) debug entr_warn; fi

install_osx_deps:
	brew install ninja entr

.PHONY: mkdir_build
