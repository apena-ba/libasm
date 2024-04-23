#include <stdio.h>
#include <string.h>

size_t ft_strlen(const char *s);

int main(){
    char *str = "";
    printf("Original:\t%ld\n", strlen(str));
    printf("My one:\t\t%ld\n", ft_strlen(str));
}