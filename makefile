all:	gitstatus

date:	touch
	date --iso-8601=seconds -u -r sitemap.xml

touch:
	touch -r index.html sitemap.xml

xml:
	xmllint --noout sitemap.xml
	
gitadd:
	git add text/*.wiki templates/*.html *.html css/*.css makefile README.md sitemap.xml

gitstatus: gitadd
	git status

gitpush:
	git push -u origin master
