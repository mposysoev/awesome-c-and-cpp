CC=g++-12
CLANG=clang++
CFLAGS=-Wall -Wextra -pedantic

gccbuild:
	$(CC) cache_access.cpp -o cache_access.out
	$(CC) different.cpp -o different.out
	$(CC) entry_point.cpp -o entry_point.out
	$(CC) index_out_of_bounds.cpp -o index_out_of_bounds.out
	$(CC) type_conversion.cpp -o type_conversion.out
	$(CC) type_overflow.cpp -o type_overflow.out

gccbuildwarnings:
	$(CC) cache_access.cpp $(CFLAGS) -o cache_access.out
	$(CC) different.cpp $(CFLAGS) -o different.out
	$(CC) entry_point.cpp $(CFLAGS) -o entry_point.out
	$(CC) index_out_of_bounds.cpp $(CFLAGS) -o index_out_of_bounds.out
	$(CC) type_conversion.cpp $(CFLAGS) -o type_conversion.out
	$(CC) type_overflow.cpp $(CFLAGS) -o type_overflow.out

clangbuild:
	$(CLANG) cache_access.cpp -o clang-cache_access.out
	$(CLANG) different.cpp -o clang-different.out
	$(CLANG) entry_point.cpp -o clang-entry_point.out
	$(CLANG) index_out_of_bounds.cpp -o clang-index_out_of_bounds.out
	$(CLANG) type_conversion.cpp -o clang-type_conversion.out
	$(CLANG) type_overflow.cpp -o clang-type_overflow.out

clangbuildwarnings:
	$(CLANG) cache_access.cpp $(CFLAGS) -o clang-cache_access.out
	$(CLANG) different.cpp $(CFLAGS) -o clang-different.out
	$(CLANG) entry_point.cpp $(CFLAGS) -o clang-entry_point.out
	$(CLANG) index_out_of_bounds.cpp $(CFLAGS) -o clang-index_out_of_bounds.out
	$(CLANG) type_conversion.cpp $(CFLAGS) -o clang-type_conversion.out
	$(CLANG) type_overflow.cpp $(CFLAGS) -o clang-type_overflow.out

compcommandforsonallint:
	$(CLANG) cache_access.cpp $(CFLAGS) -MJ cachecomp.json -o clang-cache_access.out
	$(CLANG) different.cpp $(CFLAGS) -MJ diffcomp.json -o clang-different.out
	$(CLANG) entry_point.cpp $(CFLAGS) -MJ entrycomp.json -o clang-entry_point.out
	$(CLANG) index_out_of_bounds.cpp $(CFLAGS) -MJ indexcomp.json -o clang-index_out_of_bounds.out
	$(CLANG) type_conversion.cpp $(CFLAGS) -MJ convcomp.json -o clang-type_conversion.out
	$(CLANG) type_overflow.cpp $(CFLAGS) -MJ overcomp.json -o clang-type_overflow.out
	sed -e '1s/^/[\'$'\n''/' -e '$s/,$/\'$'\n'']/' *.json > compile_commands.json

clean:
		rm -f *.out
