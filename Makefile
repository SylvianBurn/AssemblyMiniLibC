##
## EPITECH PROJECT, 2022
## ASM
## File description:
## Makefile
##

SRC	=	src/my_strlen.asm	\
		src/strchr.asm

NAME=	libasm.so

all:	$(NAME)

$(NAME):
	nasm -f elf64 $(SRC)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:	all	clean	fclean	re