CFLAGS:=-O3

all: avx_flops

avx_flops: src/cpuid.c src/cpuid.h src/driver.c
	$(CC) $(CFLAGS) -o $@ $^

run: avx_flops
	$<

clean:
	rm -f avx_flops
