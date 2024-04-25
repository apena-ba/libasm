#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *s);
int ft_strcmp(const char *s1, const char *s2);


int main(){
    char *s1 = "1";
    char *s2 = "0";
    printf("\nstrlen\n\n");
    printf("Original:\t%ld\n", strlen(s1));
    printf("My one:\t\t%ld\n", ft_strlen(s1));
    printf("\nstrcmp\n\n");
    printf("Original:\t%d\n", strcmp(s1, s2));
    printf("My one:\t\t%d\n", ft_strcmp(s1, s2));
}