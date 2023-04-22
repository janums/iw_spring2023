FILE1 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small.c 
FILE2 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large.c 
FILE3 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small_parallel.c 
FILE4 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small_timed.c 

all: search_small search_large

search_small: ${FILE1} Makefile
	gcc -static ${FILE1} -O3 -o search_small

search_small_parallel: ${FILE3} Makefile
	gcc -pthread -static ${FILE3} -O3 -o search_small_p

search_small_timed: ${FILE4} Makefile
	gcc -pthread -static ${FILE4} -O3 -o search_small_timed

search_large: ${FILE2} Makefile
	gcc -static ${FILE2} -O3 -o search_large

search_large_timed: ${FILE2} Makefile
	gcc -static ${FILE2} -O3 -o search_large

clean:
	rm -rf search_small search_large output*
