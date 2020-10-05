#include "uls.h"

static t_file *sorted_merge(t_file *a, t_file *b) {
    t_file *result = NULL;

    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;
    if (mx_strcmp(a->d_name, b->d_name) < 0) {
        result = a;
        result->next = sorted_merge(a->next, b);
    } else {
        result = b;
        result->next = sorted_merge(a, b->next);
    }
    return result;
}

void mx_merge_sort(t_file **file) {
    t_file *head = *file;
    t_file *a = NULL;
    t_file *b = NULL;

    if ((head == NULL) || (head->next == NULL))
        return;
    mx_split_f_b(head, &a, &b);
    mx_merge_sort(&a);
    mx_merge_sort(&b);
    *file = sorted_merge(a, b);
}
