default: main.c
	gcc -m32 -o SudokuResolver_x86 main.c
	gcc -m64 -o SudokuResolver_x86-64 main.c

clean:
	rm SudokuResolver_x86-64.exe SudokuResolver_x86.exe