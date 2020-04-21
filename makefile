all:	gitstatus

date:	touch
	date --iso-8601=seconds -u -r sitemap.xml

touch:
	touch -r index.html sitemap.xml

xml:
	xmllint --noout sitemap.xml

tidy:
	tidy -utf8 -m *.html
	
gitadd:
	git add wiki/*.wiki *.html style.css makefile README.md sitemap.xml

gitstatus: gitadd
	git status

gitpush:
	git push -u origin master
