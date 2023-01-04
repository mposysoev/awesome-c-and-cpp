CC=gcc-12
CLANG=clang
CFLAGS=-Wall -Wextra -pedantic

cache:
	$(CC) cache_access.c $(CFLAGS) -o cache_access.out

bounds:
	$(CC) index_out_of_bounds.c $(CFLAGS) -o index_out_of_bounds.out

overflow:
	$(CC) type_overflow.c $(CFLAGS) -o type_overflow.out

conversion:
	$(CC) type_conversion.c $(CFLAGS) -o type_conversion.out

clang-cache:
	$(CLANG) cache_access.c $(CFLAGS) -o clang-cache_access.out

clang-bounds:
	$(CLANG) index_out_of_bounds.c $(CFLAGS) -o clang-index_out_of_bounds.out

clang-overflow:
	$(CLANG) type_overflow.c $(CFLAGS) -o clang-type_overflow.out

clang-conversion:
	$(CLANG) type_conversion.c $(CFLAGS) -o clang-type_conversion.out

clean:
		rm -f *.out
