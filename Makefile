.PHONY: all
all:
	@echo "Compiling resume..."
	@typst compile resume.typ
	@echo "Resume compiled."
