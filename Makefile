NAME = uls

INCI = inc/uls.h

INC = uls.h

SRCS = src/main.c \
	src/mx_clean_uls.c \
	src/mx_parse_flags.c \
	src/mx_get_sorted_flags.c \
	src/mx_printerr.c \
	src/mx_p_err_flag.c \
	src/mx_get_uls.c \
	src/mx_is_no_our_flags.c\
	src/mx_printerr_char.c \
	src/mx_get_root.c \
	src/mx_kill_flag_dubl.c \
	src/mx_ret_clean_flag.c \
	src/mx_filter_flags.c \
	src/mx_kill_tresh_flags.c \
	src/mx_take_root.c \
	src/mx_push_root.c \
	src/mx_clean_root.c \
	src/mx_flags_to_int.c \
	src/mx_clean_file.c \
	src/mx_push_file.c \
	src/mx_get_files.c \
	src/mx_printend.c \
	src/mx_print_l.c \
	src/mx_ret_num_len_lld.c \
	src/mx_ret_num_len.c \
	src/mx_get_limits.c \
	src/mx_get_access.c \
	src/mx_get_flag_l.c \
	src/mx_flag_l_clean.c \
	src/mx_num_to_str.c \
	src/mx_get_hard_links.c \
	src/mx_get_user_name.c \
	src/mx_get_g_name.c \
	src/mx_lld_num_to_str.c \
	src/mx_get_size.c \
	src/mx_get_time.c \
	src/mx_print_total.c \
	src/mx_print_link.c \
	src/mx_get_min_maj.c \
	src/mx_push_tresh.c \
	src/mx_clean_tresh.c \
	src/mx_print_tresh.c \
	src/mx_p_l.c \
	src/mx_push_file_light.c \
	src/mx_print_tresh_inputs.c \
	src/mx_print_l_light.c \
	src/mx_get_last_u_names.c \
	src/mx_get_last_g_names.c \
	src/mx_get_files1.c \
	src/mx_push_file1.c \
	src/mx_print_c.c \
	src/mx_print_one.c \
	src/mx_print_space.c \
	src/mx_get_time_big.c \
	src/mx_print_ex_atr.c \
	src/mx_merge_sort.c \
	src/mx_split_f_b.c \
	src/mx_merge_sort1.c \
	src/mx_merge_sort2.c \
	src/mx_merge_sort3.c \
	src/mx_merge_sort4.c \
	src/mx_print_x.c \
	src/mx_merge_sort_r.c \
	src/mx_merge_sort1_r.c \
	src/mx_merge_sort2_r.c \
	src/mx_merge_sort3_r.c \
	src/mx_merge_sort4_r.c \
	src/mx_split_f_b_root.c \
	src/mx_merge_sort_root.c \
	src/mx_merge_sort1_root.c \
	src/mx_merge_sort2_root.c \
	src/mx_merge_sort3_root.c \
	src/mx_merge_sort4_root.c \
	src/mx_merge_sort_r_root.c \
	src/mx_merge_sort1_r_root.c \
	src/mx_merge_sort2_r_root.c \
	src/mx_merge_sort3_r_root.c \
	src/mx_merge_sort4_r_root.c \
	src/mx_print_space_x.c \
	src/mx_file_reverse.c \
	src/mx_root_reverse.c \
	src/mx_get_limits1.c \
	src/mx_print_main_nl.c \
	src/mx_main_rec.c \
	src/mx_get_files_rec.c \
	src/mx_print_main_nl_rec.c \
	src/mx_get_h.c \
	src/mx_get_h_pow.c \
	src/mx_add_h.c \
	src/mx_print_col.c \
	src/mx_print_c_col.c \
	src/mx_print_x_col.c \
	src/mx_get_access_col.c \
	src/mx_print_space_x_col.c \
	src/mx_print_space_col.c \

SRC = main.c \
	mx_clean_uls.c \
	mx_parse_flags.c \
	mx_get_sorted_flags.c \
	mx_printerr.c \
	mx_p_err_flag.c \
	mx_get_uls.c \
	mx_is_no_our_flags.c \
	mx_printerr_char.c \
	mx_get_root.c \
	mx_kill_flag_dubl.c \
	mx_ret_clean_flag.c \
	mx_filter_flags.c \
	mx_kill_tresh_flags.c \
	mx_take_root.c \
	mx_push_root.c \
	mx_clean_root.c \
	mx_flags_to_int.c \
	mx_clean_file.c \
	mx_push_file.c \
	mx_get_files.c \
	mx_printend.c \
	mx_print_l.c \
	mx_ret_num_len_lld.c \
	mx_ret_num_len.c \
	mx_get_limits.c \
	mx_get_access.c \
	mx_get_flag_l.c \
	mx_flag_l_clean.c \
	mx_num_to_str.c \
	mx_get_hard_links.c \
	mx_get_user_name.c \
	mx_get_g_name.c \
	mx_lld_num_to_str.c \
	mx_get_size.c \
	mx_get_time.c \
	mx_print_total.c \
	mx_print_link.c \
	mx_get_min_maj.c \
	mx_push_tresh.c \
	mx_clean_tresh.c \
	mx_print_tresh.c \
	mx_p_l.c \
	mx_push_file_light.c \
	mx_print_tresh_inputs.c \
	mx_print_l_light.c \
	mx_get_last_u_names.c \
	mx_get_last_g_names.c \
	mx_get_files1.c \
	mx_push_file1.c \
	mx_print_c.c \
	mx_print_one.c \
	mx_print_space.c \
	mx_get_time_big.c \
	mx_print_ex_atr.c \
	mx_merge_sort.c \
	mx_split_f_b.c \
	mx_merge_sort1.c \
	mx_merge_sort2.c \
	mx_merge_sort3.c \
	mx_merge_sort4.c \
	mx_print_x.c \
	mx_merge_sort_r.c \
	mx_merge_sort1_r.c \
	mx_merge_sort2_r.c \
	mx_merge_sort3_r.c \
	mx_merge_sort4_r.c \
	mx_split_f_b_root.c \
	mx_merge_sort_root.c \
	mx_merge_sort1_root.c \
	mx_merge_sort2_root.c \
	mx_merge_sort3_root.c \
	mx_merge_sort4_root.c \
	mx_merge_sort_r_root.c \
	mx_merge_sort1_r_root.c \
	mx_merge_sort2_r_root.c \
	mx_merge_sort3_r_root.c \
	mx_merge_sort4_r_root.c \
	mx_print_space_x.c \
	mx_file_reverse.c \
	mx_root_reverse.c \
	mx_get_limits1.c \
	mx_print_main_nl.c \
	mx_main_rec.c \
	mx_get_files_rec.c \
	mx_print_main_nl_rec.c \
	mx_get_h.c \
	mx_get_h_pow.c \
	mx_add_h.c \
	mx_print_col.c \
	mx_print_c_col.c \
	mx_print_x_col.c \
	mx_get_access_col.c \
	mx_print_space_x_col.c \
	mx_print_space_col.c \

OUT = main.o \
	mx_clean_uls.o \
	mx_parse_flags.o \
	mx_get_sorted_flags.o \
	mx_printerr.o \
	mx_p_err_flag.o \
	mx_get_uls.o \
	mx_is_no_our_flags.o \
	mx_printerr_char.o \
	mx_get_root.o \
	mx_kill_flag_dubl.o \
	mx_ret_clean_flag.o \
	mx_filter_flags.o \
	mx_kill_tresh_flags.o \
	mx_take_root.o \
	mx_push_root.o \
	mx_clean_root.o \
	mx_flags_to_int.o \
	mx_clean_file.o \
	mx_push_file.o \
	mx_get_files.o \
	mx_printend.o \
	mx_print_l.o \
	mx_ret_num_len_lld.o \
	mx_ret_num_len.o \
	mx_get_limits.o \
	mx_get_access.o \
	mx_get_flag_l.o \
	mx_flag_l_clean.o \
	mx_num_to_str.o \
	mx_get_hard_links.o \
	mx_get_user_name.o \
	mx_get_g_name.o \
	mx_lld_num_to_str.o \
	mx_get_size.o \
	mx_get_time.o \
	mx_print_total.o \
	mx_print_link.o \
	mx_get_min_maj.o \
	mx_push_tresh.o \
	mx_clean_tresh.o \
	mx_print_tresh.o \
	mx_p_l.o \
	mx_push_file_light.o \
	mx_print_tresh_inputs.o \
	mx_print_l_light.o \
	mx_get_last_u_names.o \
	mx_get_last_g_names.o \
	mx_get_files1.o \
	mx_push_file1.o \
	mx_print_c.o \
	mx_print_one.o \
	mx_print_space.o \
	mx_get_time_big.o \
	mx_print_ex_atr.o \
	mx_merge_sort.o \
	mx_split_f_b.o \
	mx_merge_sort1.o \
	mx_merge_sort2.o \
	mx_merge_sort3.o \
	mx_merge_sort4.o \
	mx_print_x.o \
	mx_merge_sort_r.o \
	mx_merge_sort1_r.o \
	mx_merge_sort2_r.o \
	mx_merge_sort3_r.o \
	mx_merge_sort4_r.o \
	mx_split_f_b_root.o \
	mx_merge_sort_root.o \
	mx_merge_sort1_root.o \
	mx_merge_sort2_root.o \
	mx_merge_sort3_root.o \
	mx_merge_sort4_root.o \
	mx_merge_sort_r_root.o \
	mx_merge_sort1_r_root.o \
	mx_merge_sort2_r_root.o \
	mx_merge_sort3_r_root.o \
	mx_merge_sort4_r_root.o \
	mx_print_space_x.o \
	mx_file_reverse.o \
	mx_root_reverse.o \
	mx_get_limits1.o \
	mx_print_main_nl.o \
	mx_main_rec.o \
	mx_get_files_rec.o \
	mx_print_main_nl_rec.o \
	mx_get_h.o \
	mx_get_h_pow.o \
	mx_add_h.o \
	mx_print_col.o \
	mx_print_c_col.o \
	mx_print_x_col.o \
	mx_get_access_col.o \
	mx_print_space_x_col.o \
	mx_print_space_col.o \

OUT1 = ./obj/main.o \
	./obj/mx_clean_uls.o \
	./obj/mx_parse_flags.o \
	./obj/mx_get_sorted_flags.o \
	./obj/mx_printerr.o \
	./obj/mx_p_err_flag.o \
	./obj/mx_get_uls.o \
	./obj/mx_is_no_our_flags.o \
	./obj/mx_printerr_char.o \
	./obj/mx_get_root.o \
	./obj/mx_kill_flag_dubl.o \
	./obj/mx_ret_clean_flag.o \
	./obj/mx_filter_flags.o \
	./obj/mx_kill_tresh_flags.o \
	./obj/mx_take_root.o \
	./obj/mx_push_root.o \
	./obj/mx_clean_root.o \
	./obj/mx_flags_to_int.o \
	./obj/mx_clean_file.o \
	./obj/mx_push_file.o \
	./obj/mx_get_files.o \
	./obj/mx_printend.o \
	./obj/mx_print_l.o \
	./obj/mx_ret_num_len_lld.o \
	./obj/mx_ret_num_len.o \
	./obj/mx_get_limits.o \
	./obj/mx_get_access.o \
	./obj/mx_get_flag_l.o \
	./obj/mx_flag_l_clean.o \
	./obj/mx_num_to_str.o \
	./obj/mx_get_hard_links.o \
	./obj/mx_get_user_name.o \
	./obj/mx_get_g_name.o \
	./obj/mx_lld_num_to_str.o \
	./obj/mx_get_size.o \
	./obj/mx_get_time.o \
	./obj/mx_print_total.o \
	./obj/mx_print_link.o \
	./obj/mx_get_min_maj.o \
	./obj/mx_push_tresh.o \
	./obj/mx_clean_tresh.o \
	./obj/mx_print_tresh.o \
	./obj/mx_p_l.o \
	./obj/mx_push_file_light.o \
	./obj/mx_print_tresh_inputs.o \
	./obj/mx_print_l_light.o \
	./obj/mx_get_last_u_names.o \
	./obj/mx_get_last_g_names.o \
	./obj/mx_get_files1.o \
	./obj/mx_push_file1.o \
	./obj/mx_print_c.o \
	./obj/mx_print_one.o \
	./obj/mx_print_space.o \
	./obj/mx_get_time_big.o \
	./obj/mx_print_ex_atr.o \
	./obj/mx_merge_sort.o \
	./obj/mx_split_f_b.o \
	./obj/mx_merge_sort1.o \
	./obj/mx_merge_sort2.o \
	./obj/mx_merge_sort3.o \
	./obj/mx_merge_sort4.o \
	./obj/mx_print_x.o \
	./obj/mx_merge_sort_r.o \
	./obj/mx_merge_sort1_r.o \
	./obj/mx_merge_sort2_r.o \
	./obj/mx_merge_sort3_r.o \
	./obj/mx_merge_sort4_r.o \
	./obj/mx_split_f_b_root.o \
	./obj/mx_merge_sort_root.o \
	./obj/mx_merge_sort1_root.o \
	./obj/mx_merge_sort2_root.o \
	./obj/mx_merge_sort3_root.o \
	./obj/mx_merge_sort4_root.o \
	./obj/mx_merge_sort_r_root.o \
	./obj/mx_merge_sort1_r_root.o \
	./obj/mx_merge_sort2_r_root.o \
	./obj/mx_merge_sort3_r_root.o \
	./obj/mx_merge_sort4_r_root.o \
	./obj/mx_print_space_x.o \
	./obj/mx_file_reverse.o \
	./obj/mx_root_reverse.o \
	./obj/mx_get_limits1.o \
	./obj/mx_print_main_nl.o \
	./obj/mx_main_rec.o \
	./obj/mx_get_files_rec.o \
	./obj/mx_print_main_nl_rec.o \
	./obj/mx_get_h.o \
	./obj/mx_get_h_pow.o \
	./obj/mx_add_h.o \
	./obj/mx_print_col.o \
	./obj/mx_print_c_col.o \
	./obj/mx_print_x_col.o \
	./obj/mx_get_access_col.o \
	./obj/mx_print_space_x_col.o \
	./obj/mx_print_space_col.o \

CFLAGS = -std=c11 -Wall -Wextra -Werror -Wpedantic

all: install

install:
	@make -C libmx
	@cp $(SRCS) .
	@cp $(INCI) .
	@clang $(CFLAGS) -c $(SRC) -I $(INC)
	@mkdir -p obj
	@mv $(OUT) ./obj
	@clang $(CFLAGS) libmx/libmx.a $(OUT1) -o $(NAME)

uninstall:
	@make clean
	@make uninstall -C libmx
	@rm -rf $(NAME)

clean:
	@make clean -C libmx
	@rm -rf $(INC)
	@rm -rf $(SRC)
	@rm -rf ./obj

reinstall: uninstall install
