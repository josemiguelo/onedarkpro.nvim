NV_VERSION := $(shell nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

all: test

test:
	nvim --headless --noplugin -u tests/001_spec.vim +Test1
	nvim --headless --noplugin -u tests/002_spec.vim +Test2
	nvim --headless --noplugin -u tests/003_spec.vim +Test3
	nvim --headless --noplugin -u tests/005_spec.vim +Test5
ifeq ($(NV_VERSION), 0.8)
	nvim --headless --noplugin -u tests/004_spec.vim +Test4
	nvim --headless --noplugin -u tests/006_spec.vim +Test6
endif
ifeq ($(NV_VERSION), 0.9)
	nvim --headless --noplugin -u tests/004_spec.vim +Test4
	nvim --headless --noplugin -u tests/006_spec.vim +Test6
endif
