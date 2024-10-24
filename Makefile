# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: malde-ch <malo@chato.fr>                   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/12 16:06:06 by malde-ch          #+#    #+#              #
#    Updated: 2024/09/30 09:40:09 by malde-ch         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
FLAGS = -Wall -Wextra -Werror
LIB = ar rcs
RM = rm -f
OBJ = $(SRC:.c=.o)
INCLUDE = ft_printf.h
MAKEFILE = Makefile
SRC = ft_putchar_count.c ft_putstr_protected.c ft_putnbr_negatif.c \
		ft_putnbr_base.c ft_conversions.c ft_printf.c 


all: $(NAME)

$(NAME): $(OBJ) $(INCLUDE) $(MAKEFILE)
		$(LIB) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(FLAGS) -c -o $@ $<


clean: 
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean re all

