
2026_ohio.html: 2026_ohio.zip
	python3 ~/src/packager/makeloader.py 2026/Ohio/ohio.html 2026_ohio.zip 2026_ohio.html


2026_ohio.zip: 2026/Ohio/ohio.html
	(cd 2026/Ohio && zip -r ../../2026_ohio.zip . -x 'not_in_archive/*')
	

2026_aps.html: 2026_aps.zip
	python3 ~/src/packager/makeloader.py 2026/APS/aps.html 2026_aps.zip 2026_aps.html

2026_aps.zip: 2026/APS/aps.html
	(cd 2026/APS && zip -r ../../2026_aps.zip . -x 'not_in_archive/*')
	

2026_AIforum.html: 2026_AIforum.zip
	python3 ~/src/packager/makeloader.py 2026/AIforum/aiforum.html 2026_AIforum.zip 2026_AIforum.html

2026_AIforum.zip: 2026/AIforum/aiforum.html
	(cd 2026/AIforum && zip -r ../../2026_AIforum.zip . -x 'not_in_archive/*')


2026_SROXIV.html: 2026_SROXIV.zip
	python3 ~/src/packager/makeloader.py 2026/SROXIV/sroxiv.html 2026_SROXIV.zip 2026_SROXIV.html

2026_SROXIV.zip: 2026/SROXIV/sroxiv.html
	(cd 2026/SROXIV && zip -r ../../2026_SROXIV.zip . -x 'not_in_archive/*')
	
		