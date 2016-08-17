CFLAGS  := -O3 -Wall -Werror -Wno-unused-result -g
LD      := gcc
LDFLAGS := ${LDFLAGS} -lrdmacm -libverbs -lrt -lpthread

herd: common.o conn.o main.o
	${LD} -o $@ $^ ${LDFLAGS}

PHONY: clean
clean:
	rm -f *.o main
