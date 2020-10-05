#include "uls.h"

static void head_cleaner(t_file **head) {
    mx_strdel(&(*head)->d_name);
    mx_strdel(&(*head)->d_name1);
    mx_strdel(&(*head)->gr_name);
    mx_strdel(&(*head)->pw_name);
    free(*head);
    *head = NULL;
}

static void pop_file(t_file **head) {
    t_file *next_node = NULL;

    if (head == NULL || *head == NULL)
        return;
    if ((*head)->next == NULL) {
        head_cleaner(head);
        return;
    }
    next_node = (*head)->next;
    head_cleaner(head);
    *head = next_node;
}

void mx_clean_file(t_file **file) {
    while ((*file) != NULL)
        pop_file(file);
}
