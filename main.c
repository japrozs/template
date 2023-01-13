#include <stdio.h>
#include <stdlib.h>

// for displaying stuff
#define RED_BOLD "\033[1;31m"
#define CYAN_BOLD "\033[1;36m"
#define GRAY "\033[0;37m"
#define RESET "\033[0m"
#define ERR(...)                           \
	printf("%serror%s: ", RED_BOLD, GRAY); \
	printf(__VA_ARGS__);                   \
	printf("%s\n", RESET);
#define INFO(...)                          \
	printf("%sinfo%s: ", CYAN_BOLD, GRAY); \
	printf(__VA_ARGS__);                   \
	printf("%s\n", RESET);

int main(void)
{
	printf("hello, universe!\n");

	return EXIT_SUCCESS;
}
