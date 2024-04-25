NAME = libasm.a

SRC = ft_strlen.s ft_strcmp.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs -o $(NAME)

compile: re
	gcc -c main.c -o main.o && gcc main.o ft_strcmp.o ft_strlen.o -o a.out

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

%.o:%.s
	nasm -f elf64 $< -o $@

.PHONY: fclean clean re all