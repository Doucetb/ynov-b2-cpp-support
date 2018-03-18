
#include <algorithm>
#include <random>
#include <functional>
#include <iostream>
#include <ctime>


class Carte {
    std::string symbole;
    char valeur{};

public:
    Carte(std::string symbole, char valeur) : symbole(std::move(symbole)), valeur(valeur) {}

    std::string getSymbole() const {
        return symbole;
    }

    char getValeur() const {
        return valeur;
    }

    Carte() = default;
};

std::vector<Carte> joueur;
std::vector<Carte> banque;

Carte tirageCarte(Carte carreau[], Carte coeur[], Carte pique[], Carte trefle[]) {

    time_t timer;
    struct tm y2k = {0};
    double seconds;

    y2k.tm_hour = 0;
    y2k.tm_min = 0;
    y2k.tm_sec = 0;
    y2k.tm_year = 100;
    y2k.tm_mon = 0;
    y2k.tm_mday = 1;
    time(&timer);
    seconds = difftime(timer, mktime(&y2k));
    srand(static_cast<unsigned int>(seconds));
    int deck = (rand() % 3) + 1;
    Carte carte;
    int number = (rand() % 11) + 1;
    switch (deck) {
        case 1:
            std::shuffle(&coeur[0], &coeur[13], std::mt19937(std::random_device()()));
            carte = coeur[number];
            break;
        case 2:
            std::shuffle(&carreau[0], &carreau[13], std::mt19937(std::random_device()()));
            carte = carreau[number];
            break;
        case 3:
            std::shuffle(&trefle[0], &trefle[13], std::mt19937(std::random_device()()));
            carte = trefle[number];
            break;
        case 4:
            std::shuffle(&pique[0], &pique[13], std::mt19937(std::random_device()()));
            carte = pique[number];
        default:
            break;
    }
    if (carte.getValeur() == 0) {
        tirageCarte(carreau, coeur, pique, trefle);
    }
    return carte;
}

void initDeck(Carte carreau[], Carte coeur[], Carte pique[], Carte trefle[]) {

    for (int i = 1; i < 13; i++) {
        if (i == 10) {
            carreau[i] = Carte("carreau", 'J');
            coeur[i] = Carte("coeur", 'J');
            pique[i] = Carte("pique", 'J');
            trefle[i] = Carte("trefle", 'J');
        } else if (i == 11) {

            carreau[i] = Carte("carreau", 'Q');
            coeur[i] = Carte("coeur", 'Q');
            pique[i] = Carte("pique", 'Q');
            trefle[i] = Carte("trefle", 'Q');
        } else if (i == 12) {

            carreau[i] = Carte("carreau", 'K');
            coeur[i] = Carte("coeur", 'K');
            pique[i] = Carte("pique", 'K');
            trefle[i] = Carte("trefle", 'K');
        } else {

            carreau[i] = Carte("carreau", (char) (i + 48));
            coeur[i] = Carte("coeur", (char) (i + 48));
            pique[i] = Carte("pique", (char) (i + 48));
            trefle[i] = Carte("trefle", (char) (i + 48));
        }
    }
}


void initPartie(Carte coeur[], Carte carreau[], Carte trefle[], Carte pique[]) {
    initDeck(coeur, carreau, trefle, pique);
    joueur.push_back(tirageCarte(carreau, coeur, pique, trefle));
    joueur.push_back(tirageCarte(carreau, coeur, pique, trefle));
    banque.push_back(tirageCarte(carreau, coeur, pique, trefle));
}

int getScoreB() {
    int score = 0;
    bool as = false;
    for (auto &i : banque) {
        if (i.getValeur() == 'J' or i.getValeur() == 'Q' or i.getValeur() == 'K') {
            score += 10;
        } else {
            score += i.getValeur() - 48;
        }
        if (i.getValeur() == 1) {
            as = true;
        }
    }
    if (as and score + 10 <= 21) {
        score += 10;
    }
    return score;
}

int getScoreJ() {
    int score = 0;
    auto as = false;
    for (auto &i : joueur) {
        if (i.getValeur() == 'J' or i.getValeur() == 'Q' or i.getValeur() == 'K') {
            score += 10;
        } else {
            score += i.getValeur() - 48;
        }
        if (i.getValeur() == '1') {
            as = true;
        }
    }
    if (as and score + 10 <= 21) {
        score += 10;
    }
    return score;
}

void afficheScore() {
    std::cout << " Carte de la banque" << std::endl;

    for (auto &i : banque) {
        std::cout << i.getValeur() << ' ' << i.getSymbole() + " ";
    }

    std::cout << " ( " << getScoreB() << " ) " << std::endl;


    std::cout << " Vos cartes : " << std::endl;
    for (auto &i : joueur) {
        std::cout << i.getValeur() << ' ' << i.getSymbole() + " ";
    }

    std::cout << " ( " << getScoreJ() << " ) " << std::endl;

}

int CheckJwin(int scoreJ, int scoreB) {
    if ((scoreJ > scoreB && scoreJ < 22) || (scoreJ< 22 && scoreB >21)) {
        return 1;
    } else if (scoreB == scoreJ || (scoreB > 21 && scoreJ > 21)) {
        return 2;
    } else {
        return 3;
    }
}

bool defaite(int score) {
    return score <= 21;
}


int main() {
    auto coeur = new Carte[13];
    auto carreau = new Carte[13];
    auto trefle = new Carte[13];
    auto pique = new Carte[13];
    initPartie(coeur, carreau, trefle, pique);
    bool partie = true;

    std::cout << "Bienvenue au Blackjack !" << std::endl;

    while (partie) {
        afficheScore();
        std::string choix;
        partie = defaite(getScoreJ());
        if (partie) {
            std::cout << "Voulez vous un carte ou on s'arrete ? (carte ou stop)" << std::endl;
            std::cin >> choix;
            if (choix == "carte") {
                joueur.push_back(tirageCarte(carreau, coeur, pique, trefle));
            } else {
                break;
            }
        }
    }
    while (getScoreB() < 17) {
        banque.push_back(tirageCarte(carreau, coeur, pique, trefle));
    }
    int resultat = CheckJwin(getScoreJ(), getScoreB());
    afficheScore();
    switch (resultat) {
        case 1:
            std::cout << "VOUS AVEZ GAGNE !!!" << std::endl;
            break;
        case 2:
            std::cout << "Egalité !!" << std::endl;
            break;
        case 3:
            std::cout << "VOUS AVEZ PERDU !!!" << std::endl;
            break;
        default:
            break;
    }
    return 0;
}