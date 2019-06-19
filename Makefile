all:
	gcc -std=c99 -o vmm ./vmm_main.c

run:
	./vmm < ./input/linear-access.txt > your-linear-stat-result.txt 2> your-linear-result.txt
	./vmm < ./input/random-access.txt > your-random-stat-result.txt 2> your-random-result.txt

clean:
	rm -rf vmm
	rm -rf your-linear-result.txt
	rm -rf your-linear-stat-result.txt
	rm -rf your-random-result.txt
	rm -rf your-random-stat-result.txt