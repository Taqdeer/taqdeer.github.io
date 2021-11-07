.DEFAULT_GOAL := dev

dev:
		@elm-format src --yes
		@$(MAKE) copy
		@elm-live src/Main.elm -p 3000

copy:
		@cat index.html > education/index.html
		@cat index.html > groupprojects/index.html
		@cat index.html > hackathons/index.html
		@cat index.html > personalprojects/index.html
		@cat index.html > technicalskills/index.html
		@cat index.html > workexperience/index.html