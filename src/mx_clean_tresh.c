#include "uls.h"

static void pop_tresh(t_tresh **head) {
    t_tresh *next_node = NULL;

    if (head == NULL || *head == NULL)
        return;
    if ((*head)->next == NULL) {
        free(*head);
        *head = NULL;
        return;
    }
    next_node = (*head)->next;
    free(*head);
    *head = next_node;
}

void mx_clean_tresh(t_tresh **tresh) {
    while ((*tresh) != NULL) {
        free((*tresh)->tresh_name);
        (*tresh)->tresh_name = NULL;
        pop_tresh(tresh);
    }
}
