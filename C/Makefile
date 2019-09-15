# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjimenez <sjimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/15 17:25:17 by sjimenez          #+#    #+#              #
#    Updated: 2019/10/15 16:21:18 by sjimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILE1 =		Colleen
FILE2 =		Grace
FILE3 =		Sully

FLAGS = 	-Wall -Werror -Wextra

SRC =		Colleen.c	\
			Grace.c		\
			Sully.c

SRCS_DIR = 	src/

SRC_O = 	$(addprefix $(SRCS_DIR),  $(SRC:.c=.o))

%.o: %.c
	@gcc -c $(FLAGS) -o $@ $<

all: $(SRC_O) head $(FILE1) $(FILE2) $(FILE3)

$(FILE1):
	@gcc $(FLAGS) -o $(FILE1) $(SRCS_DIR)$(FILE1).o
	@echo "\033[32m✓\033[0m $(FILE1) compiled"

$(FILE2):
	@gcc $(FLAGS) -o $(FILE2) $(SRCS_DIR)$(FILE2).o
	@echo "\033[32m✓\033[0m $(FILE2) compiled"

$(FILE3):
	@gcc $(FLAGS) -o $(FILE3) $(SRCS_DIR)$(FILE3).o
	@echo "\033[32m✓\033[0m $(FILE3) compiled"


head:
	@echo "\033[36m"
	@echo " _________________________________________ "
	@echo "|    ___          ____       _            |"
	@echo "|   /   \_ __    /___ \_   _(_)_ __   ___ |"
	@echo "|  / /\ / '__|  //  / / | | | | '_ \ / _ \\|"
	@echo "| / /_//| |    / \_/ /| |_| | | | | |  __/|"
	@echo "|/___,' |_|    \___,_\ \__,_|_|_| |_|\___||"
	@echo "|_________________________________________|"
	@echo "                      sjimenez | 42 Paris"

clean:
	@rm -Rf $(SRC_O)
	@rm -Rf
	@rm -Rf $(FILE2)_* $(FILE3)_*
	@echo "Clean executed"

fclean: clean
	@rm -Rf $(FILE1) $(FILE2) $(FILE3)
	@echo "Fclean executed"

re: fclean all

.PHONY: re clean fclean all
