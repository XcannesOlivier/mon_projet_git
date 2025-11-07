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

// ✅ Définie en dehors du main
void afficherPersonne(const Personne *p) {
    printf("Nom : %-10s | Âge : %d ans\n", p->nom, p->age);
}

int main() {
    Personne p = {"Alice", 25};

    vieillir(&p);
    printf("%s a maintenant %d ans\n", p.nom, p.age);

    resetage(&p);
    printf("%s a maintenant %d ans après réinitialisation\n", p.nom, p.age);

    afficherPersonne(&p);

    return 0;
}




