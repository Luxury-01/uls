#include "uls.h"

static void sort_rev(t_file **file, int *flags) {
    if (flags[4] == 1)
        mx_merge_sort1_r(file);
    else if (flags[13] == 1 && flags[5] == 1)
        mx_merge_sort2_r(file);
    else if (flags[7] == 1 && flags[5] == 1)
        mx_merge_sort3_r(file);
    else if (flags[5] == 1)
        mx_merge_sort4_r(file);
    else
        mx_merge_sort_r(file);
}

static void sort_fl(t_file **file, int *flags) {
    if (flags[17] == 1) {
        mx_file_reverse(file);
        return;
    }
    if (flags[15] == 1) {
        sort_rev(file, flags);
        return;
    } else {
        if (flags[4] == 1)
            mx_merge_sort1(file);
        else if (flags[13] == 1 && flags[5] == 1)
            mx_merge_sort2(file);
        else if (flags[7] == 1 && flags[5] == 1)
            mx_merge_sort3(file);
        else if (flags[5] == 1)
            mx_merge_sort4(file);
        else
            mx_merge_sort(file);
    }
}

static void print_r_n(int rnum, t_root *r) {
    if (rnum > 1) {
        mx_printstr(r->root_name);
        mx_printstr(":\n");
    }
}

static t_file *get_files(t_root **r, int *flags) {
    if (flags[9] == 1 || flags[10] == 1|| flags[3] == 1
        || ((flags[5] == 1 || flags[4] == 1) && flags[17] == 0)) {
        return mx_get_files(r, flags);
    } else {
        return mx_get_files1(*r, flags);
    }
}

int main(int argc, char *argv[]) {
    t_uls *uls = mx_get_uls(argc, argv);
    t_root *root = mx_take_root(uls, NULL, &uls->root_num);
    t_root *buffer = root;
    int *ret = &uls->flags[21];

    mx_print_tresh_inputs(uls, NULL, uls->root_num, &uls->root_num);
    while (buffer) {
        print_r_n(uls->root_num, buffer);
        buffer->files = get_files(&buffer, uls->flags);
        sort_fl(&buffer->files, uls->flags);
        mx_printend(&buffer->files, uls->flags);
        mx_print_main_nl(buffer, uls->flags, buffer->files);
        buffer = buffer->next;
    }
    mx_clean_uls(&uls);
    mx_clean_root(&root);
    // system("leaks -q uls");
    return *ret;
}
