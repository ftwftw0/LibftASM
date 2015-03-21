/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/13 16:38:47 by flagoutt          #+#    #+#             */
/*   Updated: 2015/03/21 19:51:11 by flagoutt         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
int tab[4] = {0, 0, 0, 0};

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h> 
#include <fcntl.h>
int                 ft_isalpha(int c);
int                 ft_isdigit(int c);
int                 ft_isalnum(int c);
int                 ft_isascii(int c);
int                 ft_isprint(int c);
int                 ft_toupper(int c);
int                 ft_tolower(int c);
int			        ft_strlen(char *str);
char                *ft_strcat(char *s1, const char *s2);
void                ft_puts(const char *str);
void                *ft_memset(void *b, int c, int n);
void                *ft_memcpy(void *s1, const void *s2, int n);
char                *ft_strdup(const char *s1);
char                *ft_strndup(const char *s1, int n);
void                ft_bzero(void *s, int n);
int					ft_cat(int fd);
int                 ft_isspace(int c);

int main(void)
{
	printf("\n \033[36m--- ft_isdigit ---\033[0m\n");
	printf("Is 9 a digit ? %i\n", ft_isdigit('9'));
	printf("Is 0 a digit ? %i\n", ft_isdigit('0'));
	printf("Is / a digit ? %i\n", ft_isdigit('/'));
	printf("Is : a digit ? %i\n", ft_isdigit(':'));

	printf("\n \033[36m--- ft_isalpha ---\033[0m\n");
	printf("Is A alpha ? %i\n", ft_isalpha('A'));
	printf("Is Z alpha ? %i\n", ft_isalpha('Z'));
	printf("Is a alpha ? %i\n", ft_isalpha('a'));
	printf("Is z alpha ? %i\n", ft_isalpha('z'));
	printf("Is { alpha ? %i\n", ft_isalpha('{'));
	printf("Is ' alpha ? %i\n", ft_isalpha('\''));
	printf("Is [ alpha ? %i\n", ft_isalpha('['));
	printf("Is @ alpha ? %i\n", ft_isalpha('@'));

	printf("\n \033[36m--- ft_isalnum ---\033[0m\n");
	printf("Is 9 alnum ? %i\n", ft_isalnum('9'));
	printf("Is 0 alnum ? %i\n", ft_isalnum('0'));
	printf("Is / alnum ? %i\n", ft_isalnum('/'));
	printf("Is : alnum ? %i\n", ft_isalnum(':'));
	printf("Is A alnum ? %i\n", ft_isalnum('A'));
	printf("Is Z alnum ? %i\n", ft_isalnum('Z'));
	printf("Is a alnum ? %i\n", ft_isalnum('a'));
	printf("Is z alnum ? %i\n", ft_isalnum('z'));
	printf("Is { alnum ? %i\n", ft_isalnum('{'));
	printf("Is ' alnum ? %i\n", ft_isalnum('\''));
	printf("Is [ alnum ? %i\n", ft_isalnum('['));
	printf("Is @ alnum ? %i\n", ft_isalnum('@'));

	printf("\n \033[36m--- ft_isascii ---\033[0m\n");
	printf("Is @ ascii ? %i\n", ft_isascii('@'));
	printf("Is { ascii ? %i\n", ft_isascii('{'));
	printf("Is ' ascii ? %i\n", ft_isascii('\''));
	printf("Is [ ascii ? %i\n", ft_isascii('['));
	printf("Is character -1 ascii ? %i\n", ft_isascii(-1));
	printf("Is character 128 ascii ? %i\n", ft_isascii(128));

	printf("\n \033[36m--- ft_isprint ---\033[0m\n");
	printf("Is character 31(us) printable ? %i\n", ft_isprint(31));
	printf("Is @ printable ? %i\n", ft_isprint('@'));
	printf("Is { printable ? %i\n", ft_isprint('{'));
	printf("Is ' printable ? %i\n", ft_isprint('\''));
	printf("Is [ printable ? %i\n", ft_isprint('['));
	printf("Is character -1 printable ? %i\n", ft_isprint(-1));
	printf("Is character 128 printable ? %i\n", ft_isprint(128));

	printf("\n \033[36m--- ft_toupper ---\033[0m\n");
	printf("Is a becoming A ? %c\n", ft_toupper('a'));
	printf("Is z becoming Z ? %c\n", ft_toupper('z'));
	printf("Is { staying { ? %c\n", ft_toupper('{'));
	printf("Is ' staying ' ? %c\n", ft_toupper('\''));

	printf("\n \033[36m--- ft_tolower ---\033[0m\n");
	printf("Is A becoming a ? %c\n", ft_tolower('A'));
	printf("Is Z becoming z ? %c\n", ft_tolower('Z'));
	printf("Is @ staying @ ? %c\n", ft_tolower('@'));
	printf("Is [ staying [ ? %c\n", ft_tolower('['));

	printf("\n\033[36m--- ft_bzero ---\033[0m");
	int i = tab[0] + 3;
	char*real;
	char*test;
	real = strdup("Hello World!"), test = strdup("Hello World!");
	printf("\nIs memcmp returning 0 after a bzero(13) on the string \"%s\"? ", test);
	bzero(real, 13);
	ft_bzero(test, 13);
	(!memcmp(real, test, 13)) ? printf("\033[1;32mYes\033[0m"), tab[0]++ :
		printf("\033[31mGODDAMMIT NO !\033[0m");
	free(real), free(test);
	real = strdup("Hello World!"), test = strdup("Hello World!");
	printf("\nIs memcmp returning 0 after a bzero(3) on the string \"%s\" ? ", test);
	bzero(real, 3);
	ft_bzero(test, 3);
	(!memcmp(real, test, 13)) ? printf("\033[1;32mYes\033[0m"), tab[0]++ :
		printf("\033[31mGODDAMMIT NO !\033[0m");
	free(real), free(test);
	real = strdup("Hello World!"), test = strdup("Hello World!");
	printf("\nIs memcmp returning 0 after a bzero(0) on the string \"%s\" ? ", test);
	bzero(real, 0);
	ft_bzero(test, 0);
	(!memcmp(real, test, 13)) ? printf("\033[1;32mYes\033[0m"), tab[0]++ :
		printf("\033[31mGODDAMMIT NO !\033[0m");
	free(real), free(test);
	tab[2] = tab[2] + 3;
	tab[3]++;
	if (i == tab[0])
		tab[1]++;

	printf("\n\n \033[36m--- ft_strlen ---\033[0m\n");
	printf("Is \"Hello World\" 11 chars long ? %i\n", ft_strlen("Hello World"));
	printf("Is \"Oyo Crazy  World!\" 17 chars long ? %i\n", ft_strlen("Oyo Crazy  World!"));
	printf("Is \"HeyBro0123456789\" 16 chars long ? %i\n", ft_strlen("HeyBro0123456789"));

	printf("\n \033[36m--- ft_strcat ---\033[0m\n");
	char *tamer;
	tamer = malloc(100);
	strcpy(tamer, "Hello");
	ft_strcat(tamer, " World");
	printf("Is \" World\" append to \"Hello\" ? %s\n", tamer);

	printf("\n \033[36m--- ft_puts ---\033[0m");
	printf("\nIs (null) printed ? If not, it depends on the computer you are using, there is a problem with an Intel Assembler package that prevents you from storing more than a constant in the .data section of the assembler's ft_puts function. Them , you can either store the '\n' character or the \"(null)\",s string. Thats annoying, but you can test it by yourself.");
	ft_puts(NULL);
	printf("\nIs \"Hello Noob\" printed ? ");
	ft_puts("Hello Noob");
	printf("\nIs \"Crappy crappy crappy crappy crappy\" printed ? ");
	ft_puts("Crappy crappy crappy crappy crappy");
	printf("\n\n \033[36m--- ft_memset ---\033[0m\n");
	bzero(tamer, 20);
	strcpy(tamer, "Oyo World!");
	ft_memset(tamer, 'c', 9);
	printf("Is \"Oyo World!\" replaced by several 'c' ? %s", tamer);
	printf("\n\n \033[36m--- ft_memcpy ---\033[0m\n");
	char str[20];
	bzero(tamer, 20);
	strcpy(tamer, "Oyo World!");
	ft_memcpy(str, tamer, 5);
	printf("Has %s been copied until the 5th char? %s", tamer, str);

	printf("\n\n \033[36m--- ft_strdup ---\033[0m\n");
	char *ptr;
	ptr = ft_strdup(tamer);
	printf("\n\nADRESS : %p\n", ptr);
	printf("Has \"%s\" been duplicated ? %s", tamer, ptr);
	ptr = ft_strdup("\t\t\tOyo\nPloup\n");
	printf("\n\nADRESS : %p\n", ptr);
	printf("Has \"\t\t\tOyo\nPloup\n\" been duplicated ? %s", ptr);

	printf("\n\n \033[36m--- ft_cat ---\033[0m\n");
	int fd;
	fd = open(__FILE__, O_RDONLY);
	ft_cat(fd);

	printf("\n \033[32m###### BONUS TIME #####\033[0m\n");
	printf("\n \033[36m--- ft_strndup ---\033[0m\n");
	ptr = ft_strndup("Hello World", 5);
	printf("ADRESS : %p\n", ptr);
	printf("Has \"Hello World\" been duplicated into \"Hello\" ? %s\n", ptr);
	ptr = ft_strndup("OyoooPloup", 6);
	printf("ADRESS : %p\n", ptr);
	printf("Has \"OyoooPloup\" been duplicated into \"OyoooP\" ? %s\n", ptr);
	ptr = ft_strndup("OyoooPloup", 10);
	printf("ADRESS : %p\n", ptr);
	printf("Has \"OyoooPloup\" been duplicated ? %s\n", ptr);
	ptr = ft_strndup("Waazzzaaaaaaaaaaaaaaaaaaaa", 100);
	printf("ADRESS : %p\n", ptr);
	printf("Has \"Waazzzaaaaaaaaaaaaaaaaaaaa\" been duplicated ? %s\n", ptr);

	printf("\n \033[36m--- ft_isspace ---\033[0m");
	printf("\nIs '\\t' = 9 a kind of space ?");
	(ft_isspace('\t') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs '{' = 9 a kind of space ?");
	(ft_isspace('a') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs '\\n' = 9 a kind of space ?");
	(ft_isspace('\n') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs '\\r' = 9 a kind of space ?");
	(ft_isspace('\r') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs '\\v' = 9 a kind of space ?");
	(ft_isspace('\v') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs 'a' = 9 a kind of space ?");
	(ft_isspace('a') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs ' ' = 9 a kind of space ?");
	(ft_isspace(' ') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	printf("\nIs '\\f' = 9 a kind of space ?");
	(ft_isspace('\f') ? printf("\033[1;32mYes\033[0m") : printf("\033[31mGODDAMMIT NO !\033[0m"));
	return (1);
}
