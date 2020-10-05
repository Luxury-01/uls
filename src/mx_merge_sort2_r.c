#include "uls.h"

static bool comp(t_file *a, t_file *b) {
    long t1 = 0;
    long t2 = 0;

    t1 = a->f_stat.st_ctime;
    t2 = b->f_stat.st_ctime;
    if (t1 < t2)
        return true;
    if (t1 == t2) {
        t1 = a->f_stat.st_ctimespec.tv_nsec;
        t2 = b->f_stat.st_ctimespec.tv_nsec;
    }
    if (t1 < t2)
        return true;
    if (t1 == t2 && mx_strcmp(a->d_name, b->d_name) > 0)
        return true;
    return false;
}

static t_file *sort_status_change(t_file *a, t_file *b) {
    t_file *result = NULL;

    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;
    if (comp(a, b)) {
        result = a;
        result->next = sort_status_change(a->next, b);
    } else {
        result = b;
        result->next = sort_status_change(a, b->next);
    }
    return result;
}

void mx_merge_sort2_r(t_file **file) {
    t_file *head = *file;
    t_file *a = NULL;
    t_file *b = NULL;

    if ((head == NULL) || (head->next == NULL))
        return;
    mx_split_f_b(head, &a, &b);
    mx_merge_sort2_r(&a);
    mx_merge_sort2_r(&b);
    *file = sort_status_change(a, b);
}
