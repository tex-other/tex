all: ctangle
	./ctangle -bhp web2w printable
	flex -o web.lex.c web.l
	bison --warnings=none -d -v pascal.y
	gcc -o web2w web2w.c web.lex.c pascal.tab.c
	./web2w -o tex.w tex.web
	patch tex.w ctex.patch

ctangle:
	ctangle -bhp common.w
	gcc -w -c common.c
	ctangle -bhp ctangle.w
	gcc -w -c ctangle.c
	gcc -w -o ctangle ctangle.o common.o
