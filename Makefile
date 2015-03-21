#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/13 16:23:18 by flagoutt          #+#    #+#              #
#    Updated: 2015/03/21 19:26:04 by flagoutt         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

SRCS =	ft_isdigit.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_isalnum.s \
		ft_isspace.s \
		ft_toupper.s \
		ft_bzero.s \
		ft_tolower.s \
		ft_strcat.s \
		ft_puts.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_strndup.s \
		ft_cat.s \
		ft_strlen.s \
		ft_countwords.s
OBJS = $(SRCS:.s=.o)
NAME = libfts.a

all: $(NAME)

$(NAME):
	$(foreach obj, $(SRCS), ~/.brew/bin/nasm -f macho64 $(obj) -o $(obj:.s=.o) &&) true
	@echo "###	  Ca compile mon pote!	####"
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

run:
	gcc main.c -L. -lfts #-Wall -Werror -Wextra
#ld $(SRC:.s=.o) -macosx_version_min 10.8 -lSystem

clean:
	@echo "####		 Supprime tout les .o			####"
	@rm -f $(OBJS)

fclean: clean
	@echo "####		 Supprime tout la lib			####"
	@rm -f $(NAME)

re: fclean all