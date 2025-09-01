NAME = libasm.a

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s ft_strdup.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs -o $(NAME) $(OBJ)

compile: re
	gcc -c main.c -o main.o && gcc main.o $(OBJ) -o a.out

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

sclean: fclean
	rm -rf main.o a.out

re: fclean all

%.o:%.s
	nasm -f elf64 $< -o $@

.PHONY: fclean clean re all