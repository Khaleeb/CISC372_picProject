
image:image.c image.h
	gcc -g image.c -o image.o -lm

pthreadImage: pthread_image.c pthread_image.h
	gcc -g pthread_image.c -o pthreadImage.o -lm -lpthread

ompImage: openmp_image.c image.h
	gcc -g openmp_image.c -o ompImage.o -lm -fopenmp

clean:
	rm -f *.o output.png 