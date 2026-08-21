.PHONY: all
all:
	@echo "Compiling resume..."
	@typst compile resume.typ LuisVictoria-Resume.pdf
	@echo "Resume compiled."
