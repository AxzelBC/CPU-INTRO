all: common cpu

clean:
	rm -f cpu common.o

common: common.c
	gcc -c common.c

cpu: cpu.c common.o
	gcc cpu.c common.o -o cpu -Wall
