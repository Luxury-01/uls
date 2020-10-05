#include "uls.h"

void mx_split_f_b(t_file *head, t_file **f_ref, t_file **b_ref) {
    t_file *fast;
    t_file *slow;

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
