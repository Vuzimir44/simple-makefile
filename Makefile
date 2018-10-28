##
## Minimal C Makefile
##

SRC	=	./src/main.c

NAME	=	project_name

CC	=	gcc

RM	=	rm -f

OBJ	=	$(SRC:.c=.o)

CFLAGS	=	-O2 -Wall -Wextra -Werror
CFLAGS	+=	-I./hds/

all	:	$(NAME)

$(NAME)	:	$(OBJ)
		$(CC) -o $(NAME) $(OBJ)

clean	:
		$(RM) $(OBJ)

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re