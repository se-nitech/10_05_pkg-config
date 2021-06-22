OBJS = main.o myfunc.o

main: $(OBJS)
	gcc $(OBJS) -o main $(LDFLAGS)

LDFLAGS := `pkg-config --libs opencv4` $(LDFLAGS) -lm

CFLAGS := `pkg-config --cflags opencv4` $(CFLAGS)

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

.PHONY: all clean
all: main
clean:
	rm -f main $(OBJS)
