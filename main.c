#include <stdio.h>
#include <string.h>
#include <unistd.h>

size_t  ft_strlen(const char *s);
int     ft_strcmp(const char *s1, const char *s2);
char    *ft_strcpy(char *dest, const char *src);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char    *ft_strdup(const char *s1);

void test_strcpy(void){
    char s1[2] = "1";
    char s2[3] = "ab";
    char s3[2] = "1";
    char s4[3] = "ab";
    printf("Original:\t%s\n", strcpy(s1, s2));
    printf("My one:\t\t%s\n", ft_strcpy(s3, s4));
}

void test_strdup(void){
    char *s1 = strdup("Hola !");
    char *s2 = ft_strdup("Hola !");
    printf("Original:\t%s\n", s1);
    printf("My one:\t\t%s\n", s2);
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
    printf("\nwrite\n\n");
    printf("Original:\t%ld\n", write(1, s1, 3));
    printf("My one:\t\t%ld\n", ft_write(1, s1, 3));
    printf("\nread\n\n");
    printf("My one:\t\t%ld\n", ft_read(3, s1, 3));
    printf("Original:\t%ld\n", read(3, s1, 3));
    printf("\nstrdup\n\n");
    test_strdup();
}