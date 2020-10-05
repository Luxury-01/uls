#include "uls.h"

void mx_file_reverse(t_file **head_ref) {
    t_file *prev = NULL;
    t_file *current = *head_ref;
    t_file *next = NULL;

    while (current != NULL) {
        next = current->next;
        current->next = prev;
        prev = current;
        current = next; 
    }
    *head_ref = prev;
}
