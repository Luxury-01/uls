#include "uls.h"

static t_tresh *create_tresh(char *tresh_name) {
    t_tresh *head = malloc(sizeof (t_tresh));

    head->tresh_name = tresh_name;
    head->next = NULL;
    return head;
}

void mx_push_tresh(t_tresh **tr, char *tresh_name) {
    t_tresh *cur = NULL;

    if (*tr == NULL) {
        *tr = create_tresh(tresh_name);
        return;
    }
    cur = *tr;
    while (cur->next != NULL) {
        cur = cur->next;
    }
    cur->next = create_tresh(tresh_name);
    cur = cur->next;
}
