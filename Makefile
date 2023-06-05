clean:
	rm -rf build dist

exe:
	pyinstaller ./game/main.py --onefile -n hyperlydian --add-data "./assets:assets" --add-data "./game:."

