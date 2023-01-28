# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dracken24 <dracken24@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 13:22:35 by nadesjar          #+#    #+#              #
#    Updated: 2023/01/28 14:01:43 by dracken24        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

P_OBJS 			= ./objs/
P_SRCS			= ./srcs/

FILES			= $(P_SRCS)main.cpp \

OBJS			= $(patsubst $(P_SRCS)%.cpp, $(P_OBJS)%.o, $(FILES))

CC				= c++

CFLAGS			= -Wall -Werror -Wextra -std=c++11

# RAYLIB_L		= ./raylib/libraylib.a
# RAYLIB_M		= ./raylib/libraylib.a -l raylib

NAME			= Scop

# ------------------------------- Compilation -------------------------------- #

all: signat msg_in $(NAME) msg_out execute

$(NAME): $(OBJS)
	@$(CC) $(OBJS)  $(CFLAGS) -o $(NAME)

$(P_OBJS)%.o:	$(P_SRCS)%.cpp
	@mkdir -p $(P_OBJS)
	@$(CC) $(CFLAGS) -I. -c $< -o $@
	@printf "$G■"

# --------------------------------- Execute ---------------------------------- #

execute:
	@./$(NAME)

# ----------------------------------- Git ------------------------------------ #

git:
	@git add .
	@git commit -m "Push"
	@git push

# --------------------------------- Messages --------------------------------- #

msg_in:
	@echo $L"COMPILATION DE Container EN COURS..."$W

msg_out:
	@echo $L"\nContainer READY !!!\n"$W

signat:
	@echo "$G\n\|/~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~\|/"
	@echo " |             ---------------------------------------------             |"
	@echo " |             *--*   $LPROJET:  Scop     PAR: NADESJAR$G   *--*             |"
	@echo " |             ---------------------------------------------             |"
	@echo "/|\~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~---~/|\ \n$W"
	
# ---------------------------------- Colors ---------------------------------- #

L	= $(shell tput -Txterm setaf 5)
R	= $(shell tput -Txterm setaf 1)
G	= $(shell tput -Txterm setaf 2)
C	= $(shell tput -Txterm setaf 6)
W	= $(shell tput -Txterm setaf 7)

# ---------------------------------- Clean ----------------------------------- #

clean:	
	@rm -fr $(P_OBJS)

fclean: clean
	@echo $G"                                    BYE BYE !!!"$W
	@rm -f $(NAME)

re: fclean all


.PHONY: all msg_in msg_out clean fclean re signat
