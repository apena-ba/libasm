NAME = my_program

SRC = ft_strlen.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	gcc $(OBJ) -o $(NAME) -lc

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

%.o:%.s
	nasm -f elf64 $< -o $@

.PHONY: fclean clean re all