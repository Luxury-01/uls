#include "uls.h"

static void split_f_b(t_tresh *head, t_tresh **f_ref, t_tresh **b_ref) {
    t_tresh *fast;
    t_tresh *slow;

    slow = head;
    fast = head->next;
    while (fast != NULL) {
        fast = fast->next;
        if (fast != NULL) {
            slow = slow->next;
            fast = fast->next;
        }
    }
    *f_ref = head;
    *b_ref = slow->next;
    slow->next = NULL;
}

static t_tresh *sorted_merge(t_tresh *a, t_tresh *b) {
    t_tresh *result = NULL;

    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;
    if (mx_strcmp(a->tresh_name, b->tresh_name) < 0) {
        result = a;
        result->next = sorted_merge(a->next, b);
    } else {
        result = b;
        result->next = sorted_merge(a, b->next);
    }
    return result;
}

static void merge_sort(t_tresh **t) {
    t_tresh *head = *t;
    t_tresh *a = NULL;
    t_tresh *b = NULL;

    if ((head == NULL) || (head->next == NULL))
        return;
    split_f_b(head, &a, &b);
    merge_sort(&a);
    merge_sort(&b);
    *t = sorted_merge(a, b);
}

void mx_print_tresh(t_tresh **t, int *flags) {
    DIR *dir = NULL;
    t_tresh *cur = NULL;

    flags[21] = 1;
    if (!flags[17])
        merge_sort(t);
    cur = *t;
    while (cur) {
        dir = opendir(cur->tresh_name);
        mx_printerr("uls: ");
        perror(cur->tresh_name);
        cur = cur->next;
    }
    mx_clean_tresh(t);
}
