clean:
	rm -rf build dist

exe:
	pyinstaller ./game/main.py --onefile -n hyperlydian --add-data "./assets:assets" --add-data "./game:."

install:
	python3 -m venv --clear .venv
	source .venv/bin/activate
	python3 -m pip install -r requirements.txt
