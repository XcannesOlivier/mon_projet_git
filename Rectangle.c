#include <stdio.h>
#include <string.h>

typedef struct {
    char nom[20];
    int age;
} Personne;

void vieillir(Personne *p) {
    p->age += 1;
}
void resetage(Personne *p) {
    p->age = 0;
}

int main() {
    Personne p = {"Alice", 25};
    vieillir(&p);
    printf("%s a maintenant %d ans\n", p.nom, p.age);
    resetage(&p);
    printf("%s a maintenant %d ans aprés réinitialisation\n", p.nom, p.age);
    return 0;
}





