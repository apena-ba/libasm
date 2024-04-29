#include <stdio.h>
#include <string.h>

size_t  ft_strlen(const char *s);
int     ft_strcmp(const char *s1, const char *s2);
char    *ft_strcpy(char *dest, const char *src);

void test_strcpy(void){
    char s1[2] = "1";
    char s2[3] = "ab";
    char s3[2] = "1";
    char s4[3] = "ab";
    printf("Original:\t%s\n", strcpy(s1, s2));
    printf("My one:\t\t%s\n", ft_strcpy(s3, s4));
}

int main(){
    char s1[4] = "123";
    char s2[4] = "345";
    printf("\nstrlen\n\n");
    printf("Original:\t%ld\n", strlen(s1));
    printf("My one:\t\t%ld\n", ft_strlen(s1));
    printf("\nstrcmp\n\n");
    printf("Original:\t%d\n", strcmp(s1, s2));
    printf("My one:\t\t%d\n", ft_strcmp(s1, s2));
    printf("\nstrcpy\n\n");
    test_strcpy();
}