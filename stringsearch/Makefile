FILE1 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small.c 
FILE2 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large.c 
FILE3 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large_parallel.c 
FILE4 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_small_timed.c 
FILE5 = bmhasrch.c  bmhisrch.c  bmhsrch.c  pbmsrch_large_timed.c 

all: search_small search_large

search_small: ${FILE1} Makefile
	gcc -static ${FILE1} -O3 -o search_small

search_large_parallel: ${FILE3} Makefile
	gcc -pthread -static ${FILE3} -O3 -o search_large_parallel

search_small_timed: ${FILE4} Makefile
	gcc -pthread -static ${FILE4} -O3 -o search_small_timed

search_large: ${FILE2} Makefile
	gcc -static ${FILE2} -O3 -o search_large

search_large_timed: ${FILE5} Makefile
	gcc -static ${FILE5} -O3 -o search_large_timed

clean:
	rm -rf search_small search_large search_large_timed search_small_timed search_large_parallel output*
