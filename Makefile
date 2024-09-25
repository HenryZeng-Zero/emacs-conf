emacs-entrance = ~/.emacs
work-path = $(shell pwd)

install:
	@cat ./loader.el > $(emacs-entrance)
	@sed 's#replace_variable_conf_path#$(work-path)#g' $(emacs-entrance) -i
	@echo Success to install loader

clean-tmp-files:
	@rm *~

cat-emacs-entrance:
	@cat $(emacs-entrance)

edit-emacs-entrance:
	emacs $(emacs-entrance)

edit-loader:
	emacs ./loader.el

debug:
	emacs --debug-init
