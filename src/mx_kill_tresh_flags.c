#include "uls.h"

static void kill_tresh_flags2(char **fl, int num, char c) {
    if (c == 'c') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == 'u')
                fl[0][i] = '+';
        }
        return;
    }
    if (c == 'u') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == 'c')
                fl[0][i] = '+';
        }
    }
}

static void kill_tresh_flags1(char **fl, int num, char c) {
    if (c == 'C') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == '1' || fl[0][i] == 'l' || fl[0][i] == 'x'
                || fl[0][i] == 'g' || fl[0][i] == 'o' || fl[0][i] == 'n') {
                fl[0][i] = '+';
            }
        }
        return;
    }
    if (c == 'l' || c == 'o' || c == 'g' || c == 'n') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == '1' || fl[0][i] == 'C' || fl[0][i] == 'x')
                fl[0][i] = '+';
        }
        return;
    }
    kill_tresh_flags2(fl, num, c);
}

void mx_kill_tresh_flags(char **fl, int num, char c) {
    if (c == '1') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == 'C' || fl[0][i] == 'l' || fl[0][i] == 'x'
                || fl[0][i] == 'g' || fl[0][i] == 'o' || fl[0][i] == 'n') {
                fl[0][i] = '+';
            }
        }
        return;
    }
    if (c == 'x') {
        for (int i = 0; i < num; i++) {
            if (fl[0][i] == 'C' || fl[0][i] == 'l' || fl[0][i] == '1'
                || fl[0][i] == 'g' || fl[0][i] == 'o' || fl[0][i] == 'n') {
                fl[0][i] = '+';
            }
        }
        return;
    }
    kill_tresh_flags1(fl, num, c);
}
