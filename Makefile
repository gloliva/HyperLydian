clean:
	rm -rf build dist

app:
	pyinstaller ./game/main.py	\
		--onedir -n HyperLydian	\
		--distpath apps	\
		--icon "assets/png/icons/icon_32x32@2x.png"	\
		--windowed	\
		--noconfirm	\
		--hidden-import "asyncio"	\
		--hidden-import "pythonosc"	\
		--collect-submodules "pythonosc"	\
		--add-data "./assets:assets"	\
		--add-data "./game:."

install:
	python3 -m venv --clear .venv
	source .venv/bin/activate
	python3 -m pip install -r requirements.txt
