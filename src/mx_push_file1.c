#include "uls.h"

static t_file *create_file(struct dirent *dirent) {
    t_file *head = malloc(sizeof (t_file));

    head->d_name = mx_strdup(dirent->d_name);
    head->d_len = dirent->d_namlen;
    head->gr_name = NULL;
    head->pw_name = NULL;
    head->d_name1 = NULL;
    head->next = NULL;
    return head;
}

void mx_push_file1(t_file **fl, struct dirent *dirent) {
    t_file *new_node = create_file(dirent);

    new_node->next = *fl;
    *fl = new_node;
}
