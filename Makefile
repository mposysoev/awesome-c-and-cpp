CC=gcc-12
CFLAGS=-Wall -Wextra -pedantic

cache:
	$(CC) cache_access.c $(CFLAGS) -o cache_access.out

bounds:
	$(CC) index_out_of_bounds.c $(CFLAGS) -o index_out_of_bounds.out

overflow:
	$(CC) type_overflow.c $(CFLAGS) -o type_overflow.out

conversion:
	$(CC) type_conversion.c $(CFLAGS) -o type_conversion.out

clean:
	rm -f *.out
