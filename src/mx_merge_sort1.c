#include "uls.h"

static bool comp(t_file *a, t_file *b) {
    if (a->f_stat.st_size > b->f_stat.st_size)
        return true;
    if (a->f_stat.st_size == b->f_stat.st_size
        && mx_strcmp(a->d_name, b->d_name) < 0) {
        return true;
    }
    return false;
}

static t_file *sort_size(t_file *a, t_file *b) {
    t_file *result = NULL;

    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;
    if (comp(a, b)) {
        result = a;
        result->next = sort_size(a->next, b);
    } else {
        result = b;
        result->next = sort_size(a, b->next);
    }
    return result;
}

void mx_merge_sort1(t_file **file) {
    t_file *head = *file;
    t_file *a = NULL;
    t_file *b = NULL;

    if ((head == NULL) || (head->next == NULL))
        return;
    mx_split_f_b(head, &a, &b);
    mx_merge_sort1(&a);
    mx_merge_sort1(&b);
    *file = sort_size(a, b);
}
