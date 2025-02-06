CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME = libprintf.a

SRC_FILES = ft_char_in_str.c ft_handle_diff.c ft_handle_specials.c ft_handle_strings.c ft_percent_strlen.c ft_print_char.c ft_printf.c ft_print_int.c ft_print_ptr.c ft_print_str.c ft_print_unsint.c ft_print_x.c ft_print_xcap.c ft_ptr_to_hex.c
OBJ_FILES = $(SRC_FILES:%.c=%.o)

all: $(NAME)

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Compile all objects into final file
$(NAME): $(OBJ_FILES)
	ar rcs $(NAME) $(OBJ_FILES)

clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
