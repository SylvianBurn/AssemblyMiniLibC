##
## EPITECH PROJECT, 2022
## ASM
## File description:
## Makefile
##

SRC	=	src/my_strlen.asm	\
		src/strchr.asm	\

OBJ=	$(SRC:.asm=.o)

NAME=	libasm.so

CFLASG	=	-shared -fPIC

all:	$(NAME)

%.o	:	%.asm
	nasm -o $@ $< -f elf64

$(NAME):	$(OBJ)
	ld $(CFLASG) -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:	all	clean	fclean	re