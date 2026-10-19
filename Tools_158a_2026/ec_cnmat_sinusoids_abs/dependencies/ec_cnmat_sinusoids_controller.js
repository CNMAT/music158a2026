/* ec_cnmat_sinusoids~ instance controller. Classic Max js (ES5).
   Presets are JSON encoded as bounded Base64 symbol chunks, with Adler-32.
   No eval, file/network access, Global objects or cross-instance sends. */
autowatch=1; inlets=1; outlets=3;
var EC_MANIFEST = {"ui":[{"path":["ec_obj_84"],"key":"ec_obj_84","type":"flonum","replay":false,"attrs":[]},{"path":["ec_base_morph_v20_value"],"key":"ec_base_morph_v20_value","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_81"],"key":"ec_obj_81","type":"kslider","replay":false,"attrs":[]},{"path":["ec_obj_76"],"key":"ec_obj_76","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_shape_menu"],"key":"ec_obj_112/ec_all_lane_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_loops_toggle"],"key":"ec_obj_112/ec_all_lane_loops_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_smoothing_ms"],"key":"ec_obj_112/ec_all_lane_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_duration_ms"],"key":"ec_obj_112/ec_all_lane_duration_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_63"],"key":"ec_obj_63","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_51"],"key":"ec_obj_51","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_47"],"key":"ec_obj_47","type":"multislider","replay":false,"attrs":["size"]},{"path":["ec_obj_21","ec_obj_8"],"key":"ec_obj_21/ec_obj_8","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_6","ec_obj_count_number"],"key":"ec_obj_21/ec_obj_6/ec_obj_count_number","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_count_slider"],"key":"ec_obj_21/ec_obj_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_duration"],"key":"ec_obj_21/ec_obj_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_multislider"],"key":"ec_obj_21/ec_obj_multislider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_21","ec_obj_function"],"key":"ec_obj_21/ec_obj_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_21","ec_obj_coll_index"],"key":"ec_obj_21/ec_obj_coll_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_shape_menu_norm"],"key":"ec_obj_21/ec_obj_shape_menu_norm","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_adsr_morph_ms"],"key":"ec_obj_21/ec_adsr_morph_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_master_loop_toggle"],"key":"ec_obj_21/ec_master_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_34"],"key":"ec_obj_34","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_seed14"],"key":"ec_obj_32/ec_seed14","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_on14"],"key":"ec_obj_32/ec_micro_on14","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_depth14"],"key":"ec_obj_32/ec_micro_depth14","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_time14"],"key":"ec_obj_32/ec_micro_time14","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_live14"],"key":"ec_obj_32/ec_micro_live14","type":"flonum","replay":false,"attrs":[]},{"path":["ec_obj_32","ec_micro_off_time_v20"],"key":"ec_obj_32/ec_micro_off_time_v20","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_count_slider"],"key":"ec_syn_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_syn_count_display"],"key":"ec_syn_count_display","type":"number","replay":true,"attrs":[]},{"path":["ec_syn_base"],"key":"ec_syn_base","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_drift"],"key":"ec_syn_drift","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_freq_slider"],"key":"ec_syn_freq_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_amp_slider"],"key":"ec_syn_amp_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_sr_display"],"key":"ec_syn_sr_display","type":"flonum","replay":false,"attrs":[]},{"path":["ec_syn_alias_toggle"],"key":"ec_syn_alias_toggle","type":"toggle","replay":false,"attrs":[]},{"path":["ec_obj_17","ec_obj_max_display"],"key":"ec_obj_17/ec_obj_max_display","type":"flonum","replay":false,"attrs":[]},{"path":["ec_syn_freq_shape_menu"],"key":"ec_syn_freq_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_amp_shape_menu"],"key":"ec_syn_amp_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_harmonic_amp_slider"],"key":"ec_syn_harmonic_amp_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_harmonic_shape_menu"],"key":"ec_syn_harmonic_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_freq_interp_ms"],"key":"ec_syn_freq_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_amp_interp_ms"],"key":"ec_syn_amp_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_harmonic_interp_ms"],"key":"ec_syn_harmonic_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_mode"],"key":"ec_rt14_mode","type":"umenu","replay":true,"attrs":[]},{"path":["ec_rt14_target"],"key":"ec_rt14_target","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_glide"],"key":"ec_rt14_glide","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_current"],"key":"ec_rt14_current","type":"flonum","replay":false,"attrs":[]},{"path":["ec_rt14_bypass"],"key":"ec_rt14_bypass","type":"toggle","replay":true,"attrs":[]},{"path":["ec_rt14_semitones"],"key":"ec_rt14_semitones","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_cents"],"key":"ec_rt14_cents","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_offset"],"key":"ec_rt14_offset","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_gain"],"key":"ec_rt14_gain","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_low"],"key":"ec_rt14_low","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_high"],"key":"ec_rt14_high","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_cluster"],"key":"ec_rt14_cluster","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rm14_count"],"key":"ec_rm14_count","type":"number","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle0"],"key":"ec_stops_workspace14/ec_toggle0","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle1"],"key":"ec_stops_workspace14/ec_toggle1","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle2"],"key":"ec_stops_workspace14/ec_toggle2","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle3"],"key":"ec_stops_workspace14/ec_toggle3","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle4"],"key":"ec_stops_workspace14/ec_toggle4","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle5"],"key":"ec_stops_workspace14/ec_toggle5","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle6"],"key":"ec_stops_workspace14/ec_toggle6","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle7"],"key":"ec_stops_workspace14/ec_toggle7","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle8"],"key":"ec_stops_workspace14/ec_toggle8","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle9"],"key":"ec_stops_workspace14/ec_toggle9","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle10"],"key":"ec_stops_workspace14/ec_toggle10","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle11"],"key":"ec_stops_workspace14/ec_toggle11","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle12"],"key":"ec_stops_workspace14/ec_toggle12","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle13"],"key":"ec_stops_workspace14/ec_toggle13","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_beat"],"key":"ec_stops_workspace14/ec_beat","type":"flonum","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_tail"],"key":"ec_stops_workspace14/ec_tail","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_8"],"key":"ec_envelope_shaper01/ec_obj_8","type":"number","replay":false,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_6","ec_obj_count_number"],"key":"ec_envelope_shaper01/ec_obj_6/ec_obj_count_number","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_count_slider"],"key":"ec_envelope_shaper01/ec_obj_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_duration"],"key":"ec_envelope_shaper01/ec_obj_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_multislider"],"key":"ec_envelope_shaper01/ec_obj_multislider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_envelope_shaper01","ec_obj_function"],"key":"ec_envelope_shaper01/ec_obj_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_envelope_shaper01","ec_obj_coll_index"],"key":"ec_envelope_shaper01/ec_obj_coll_index","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_shape_menu_norm"],"key":"ec_envelope_shaper01/ec_obj_shape_menu_norm","type":"umenu","replay":true,"attrs":[]},{"path":["ec_v20_render_controls","ec_distribution"],"key":"ec_v20_render_controls/ec_distribution","type":"umenu","replay":true,"attrs":[]},{"path":["ec_v20_render_controls","ec_groups"],"key":"ec_v20_render_controls/ec_groups","type":"number","replay":true,"attrs":[]},{"path":["ec_v20_render_controls","ec_seed"],"key":"ec_v20_render_controls/ec_seed","type":"number","replay":true,"attrs":[]},{"path":["ec_v20_render_controls","ec_ramp"],"key":"ec_v20_render_controls/ec_ramp","type":"flonum","replay":true,"attrs":[]},{"path":["ec_partial_offset_v20_toggle"],"key":"ec_partial_offset_v20_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_partial_offset_v20_number"],"key":"ec_partial_offset_v20_number","type":"number","replay":true,"attrs":[]},{"path":["ec_alc_on"],"key":"ec_alc_on","type":"toggle","replay":true,"attrs":[]},{"path":["ec_alc_db"],"key":"ec_alc_db","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_gain"],"key":"ec_alc_gain","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_strength"],"key":"ec_alc_strength","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_smooth"],"key":"ec_alc_smooth","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_maxboost"],"key":"ec_alc_maxboost","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_model"],"key":"ec_alc_model","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_reference"],"key":"ec_alc_reference","type":"flonum","replay":false,"attrs":[]},{"path":["ec_anchor_mirror_v20_6"],"key":"ec_anchor_mirror_v20_6","type":"toggle","replay":true,"attrs":[]},{"path":["ec_anchor_scale_v20_6"],"key":"ec_anchor_scale_v20_6","type":"flonum","replay":true,"attrs":[]},{"path":["ec_ec_gain_slider"],"key":"ec_ec_gain_slider","type":"slider","replay":false,"attrs":[]},{"path":["ec_ec_gain_number"],"key":"ec_ec_gain_number","type":"flonum","replay":false,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_delay_ms","type":"number","replay":true,"attrs":[]}],"engines":[{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_21","ec_adsr_morph_engine"],"key":"ec_obj_21/ec_adsr_morph_engine","kind":"envelope_memory"},{"path":["ec_syn_js"],"key":"ec_syn_js","kind":"model"},{"path":["ec_syn_random_js"],"key":"ec_syn_random_js","kind":"random"},{"path":["ec_syn_interpolation_js"],"key":"ec_syn_interpolation_js","kind":"partial_memory"},{"path":["ec_rt14_retuning"],"key":"ec_rt14_retuning","kind":"retuning"},{"path":["ec_rt14_transform"],"key":"ec_rt14_transform","kind":"transform"},{"path":["ec_rm14_weight_library"],"key":"ec_rm14_weight_library","kind":"shapes"},{"path":["ec_rm14_engine"],"key":"ec_rm14_engine","kind":"add_remove"},{"path":["ec_stops_workspace14","ec_js"],"key":"ec_stops_workspace14/ec_js","kind":"stops"},{"path":["ec_detune_shapes_v20"],"key":"ec_detune_shapes_v20","kind":"detune_shapes"},{"path":["ec_sinusoids_audio_rendering_v20","ec_manager"],"key":"ec_sinusoids_audio_rendering_v20/ec_manager","kind":"groups"},{"path":["ec_sinusoids_audio_rendering_v20","ec_offset_crossfade_js_v20_6"],"key":"ec_sinusoids_audio_rendering_v20/ec_offset_crossfade_js_v20_6","kind":"offset"},{"path":["ec_alc_engine_v20","ec_js"],"key":"ec_alc_engine_v20/ec_js","kind":"auto_level"}],"colls":[{"key":"c0","path":["ec_obj_112","ec_lane_bpatch_01","ec_ec_proxy_user_coll"]},{"key":"c1","path":["ec_obj_112","ec_lane_bpatch_02","ec_ec_proxy_user_coll"]},{"key":"c2","path":["ec_obj_112","ec_lane_bpatch_03","ec_ec_proxy_user_coll"]},{"key":"c3","path":["ec_obj_112","ec_lane_bpatch_04","ec_ec_proxy_user_coll"]},{"key":"c4","path":["ec_obj_112","ec_lane_bpatch_05","ec_ec_proxy_user_coll"]},{"key":"c5","path":["ec_obj_112","ec_lane_bpatch_06","ec_ec_proxy_user_coll"]},{"key":"c6","path":["ec_obj_112","ec_lane_bpatch_07","ec_ec_proxy_user_coll"]},{"key":"c7","path":["ec_obj_112","ec_lane_bpatch_08","ec_ec_proxy_user_coll"]},{"key":"c8","path":["ec_obj_112","ec_lane_bpatch_09","ec_ec_proxy_user_coll"]},{"key":"c9","path":["ec_obj_112","ec_lane_bpatch_10","ec_ec_proxy_user_coll"]},{"key":"c10","path":["ec_obj_112","ec_lane_bpatch_11","ec_ec_proxy_user_coll"]},{"key":"c11","path":["ec_obj_112","ec_lane_bpatch_12","ec_ec_proxy_user_coll"]},{"key":"c12","path":["ec_obj_21","ec_ec_proxy_obj_coll"]},{"key":"c13","path":["ec_envelope_shaper01","ec_ec_proxy_obj_coll"]}],"controls":["ADSR_12_Lanes_Duration_ms","ADSR_12_Lanes_Global_Trigger","ADSR_12_Lanes_Loop","ADSR_12_Lanes_Loop_state","ADSR_12_Lanes_Shape","ADSR_12_Lanes_Shape_state","ADSR_12_Lanes_Smoothing_ms","ADSR_12_Lanes_Stop","ADSR_Breakpoints","ADSR_Duration_ms","ADSR_Emit","ADSR_Lane_01_Breakpoints","ADSR_Lane_01_Delay_ms","ADSR_Lane_01_Duration_ms","ADSR_Lane_01_Emit","ADSR_Lane_01_Loop","ADSR_Lane_01_Points","ADSR_Lane_01_Points_state","ADSR_Lane_01_Recall","ADSR_Lane_01_Shape","ADSR_Lane_01_Smoothing_ms","ADSR_Lane_01_Stop","ADSR_Lane_01_Store","ADSR_Lane_01_Store_Index","ADSR_Lane_01_Trigger","ADSR_Lane_02_Breakpoints","ADSR_Lane_02_Delay_ms","ADSR_Lane_02_Duration_ms","ADSR_Lane_02_Emit","ADSR_Lane_02_Loop","ADSR_Lane_02_Points","ADSR_Lane_02_Points_state","ADSR_Lane_02_Recall","ADSR_Lane_02_Shape","ADSR_Lane_02_Smoothing_ms","ADSR_Lane_02_Stop","ADSR_Lane_02_Store","ADSR_Lane_02_Store_Index","ADSR_Lane_02_Trigger","ADSR_Lane_03_Breakpoints","ADSR_Lane_03_Delay_ms","ADSR_Lane_03_Duration_ms","ADSR_Lane_03_Emit","ADSR_Lane_03_Loop","ADSR_Lane_03_Points","ADSR_Lane_03_Points_state","ADSR_Lane_03_Recall","ADSR_Lane_03_Shape","ADSR_Lane_03_Smoothing_ms","ADSR_Lane_03_Stop","ADSR_Lane_03_Store","ADSR_Lane_03_Store_Index","ADSR_Lane_03_Trigger","ADSR_Lane_04_Breakpoints","ADSR_Lane_04_Delay_ms","ADSR_Lane_04_Duration_ms","ADSR_Lane_04_Emit","ADSR_Lane_04_Loop","ADSR_Lane_04_Points","ADSR_Lane_04_Points_state","ADSR_Lane_04_Recall","ADSR_Lane_04_Shape","ADSR_Lane_04_Smoothing_ms","ADSR_Lane_04_Stop","ADSR_Lane_04_Store","ADSR_Lane_04_Store_Index","ADSR_Lane_04_Trigger","ADSR_Lane_05_Breakpoints","ADSR_Lane_05_Delay_ms","ADSR_Lane_05_Duration_ms","ADSR_Lane_05_Emit","ADSR_Lane_05_Loop","ADSR_Lane_05_Points","ADSR_Lane_05_Points_state","ADSR_Lane_05_Recall","ADSR_Lane_05_Shape","ADSR_Lane_05_Smoothing_ms","ADSR_Lane_05_Stop","ADSR_Lane_05_Store","ADSR_Lane_05_Store_Index","ADSR_Lane_05_Trigger","ADSR_Lane_06_Breakpoints","ADSR_Lane_06_Delay_ms","ADSR_Lane_06_Duration_ms","ADSR_Lane_06_Emit","ADSR_Lane_06_Loop","ADSR_Lane_06_Points","ADSR_Lane_06_Points_state","ADSR_Lane_06_Recall","ADSR_Lane_06_Shape","ADSR_Lane_06_Smoothing_ms","ADSR_Lane_06_Stop","ADSR_Lane_06_Store","ADSR_Lane_06_Store_Index","ADSR_Lane_06_Trigger","ADSR_Lane_07_Breakpoints","ADSR_Lane_07_Delay_ms","ADSR_Lane_07_Duration_ms","ADSR_Lane_07_Emit","ADSR_Lane_07_Loop","ADSR_Lane_07_Points","ADSR_Lane_07_Points_state","ADSR_Lane_07_Recall","ADSR_Lane_07_Shape","ADSR_Lane_07_Smoothing_ms","ADSR_Lane_07_Stop","ADSR_Lane_07_Store","ADSR_Lane_07_Store_Index","ADSR_Lane_07_Trigger","ADSR_Lane_08_Breakpoints","ADSR_Lane_08_Delay_ms","ADSR_Lane_08_Duration_ms","ADSR_Lane_08_Emit","ADSR_Lane_08_Loop","ADSR_Lane_08_Points","ADSR_Lane_08_Points_state","ADSR_Lane_08_Recall","ADSR_Lane_08_Shape","ADSR_Lane_08_Smoothing_ms","ADSR_Lane_08_Stop","ADSR_Lane_08_Store","ADSR_Lane_08_Store_Index","ADSR_Lane_08_Trigger","ADSR_Lane_09_Breakpoints","ADSR_Lane_09_Delay_ms","ADSR_Lane_09_Duration_ms","ADSR_Lane_09_Emit","ADSR_Lane_09_Loop","ADSR_Lane_09_Points","ADSR_Lane_09_Points_state","ADSR_Lane_09_Recall","ADSR_Lane_09_Shape","ADSR_Lane_09_Smoothing_ms","ADSR_Lane_09_Stop","ADSR_Lane_09_Store","ADSR_Lane_09_Store_Index","ADSR_Lane_09_Trigger","ADSR_Lane_10_Breakpoints","ADSR_Lane_10_Delay_ms","ADSR_Lane_10_Duration_ms","ADSR_Lane_10_Emit","ADSR_Lane_10_Loop","ADSR_Lane_10_Points","ADSR_Lane_10_Points_state","ADSR_Lane_10_Recall","ADSR_Lane_10_Shape","ADSR_Lane_10_Smoothing_ms","ADSR_Lane_10_Stop","ADSR_Lane_10_Store","ADSR_Lane_10_Store_Index","ADSR_Lane_10_Trigger","ADSR_Lane_11_Breakpoints","ADSR_Lane_11_Delay_ms","ADSR_Lane_11_Duration_ms","ADSR_Lane_11_Emit","ADSR_Lane_11_Loop","ADSR_Lane_11_Points","ADSR_Lane_11_Points_state","ADSR_Lane_11_Recall","ADSR_Lane_11_Shape","ADSR_Lane_11_Smoothing_ms","ADSR_Lane_11_Stop","ADSR_Lane_11_Store","ADSR_Lane_11_Store_Index","ADSR_Lane_11_Trigger","ADSR_Lane_12_Breakpoints","ADSR_Lane_12_Delay_ms","ADSR_Lane_12_Duration_ms","ADSR_Lane_12_Emit","ADSR_Lane_12_Loop","ADSR_Lane_12_Points","ADSR_Lane_12_Points_state","ADSR_Lane_12_Recall","ADSR_Lane_12_Shape","ADSR_Lane_12_Smoothing_ms","ADSR_Lane_12_Stop","ADSR_Lane_12_Store","ADSR_Lane_12_Store_Index","ADSR_Lane_12_Trigger","ADSR_Lane_Smoothing_ms","ADSR_Morph_ms","ADSR_Points","ADSR_Recall","ADSR_Shape","ADSR_Store","ADSR_Store_Index","Add_Partials","All_Off","Amplitude_Morph_ms","Amplitude_Shape","Amplitude_Values","Anchor_Mirror","Anchor_Mirror_state","Anchor_Morph_ms","Anchor_Scale","Anchor_Scale_state","Anchor_Shape","Anchor_Values","Auto_Level","Auto_Level_state","Cents","Cluster_Hz","Copy_Amplitude_to_Anchor","Copy_Amplitude_to_Drift","Direction_Seed","Drift_Morph_ms","Drift_Shape","Drift_Values","Envelope_Loop","Envelope_Loop_state","Envelope_Trigger","Library_Breakpoints","Library_Duration_ms","Library_Emit","Library_Points","Library_Shape","Library_Store","Library_Store_Index","Max_Drift","Maximum_Hz","Micro_Depth_Hz","Micro_Depth_Hz_state","Micro_Off_Morph_ms","Micro_On","Micro_On_state","Micro_Segment_ms","Minimum_Hz","Model_Gain","Octave_Family","Offset_Hz","Partial_Amplitude","Partial_Anchor","Partial_Count","Partial_Drift","Partial_Offset_Crossfade","Partial_Offset_Number","Partial_Offset_On","Post_Bypass","Random_Amplitude","Random_Anchor","Random_Drift","Registration","Removal_Count","Removal_Shape","Remove_Partials","Render_Distribution","Render_Ramp_ms","Render_Seed","Render_Status_state","Renderer_Reemit","Retune_ms","Retune_ms_state","Retuning_Mode","Semitones","Source_Base_Hz","Source_Base_Hz_state","Spatial_Group_Count","Stop_0","Stop_1","Stop_10","Stop_11","Stop_12","Stop_13","Stop_2","Stop_3","Stop_4","Stop_5","Stop_6","Stop_7","Stop_8","Stop_9","Stop_Beat_Hz","Stop_Tail","Stops_Apply","Stops_Clear","Target_Base_Hz","add-partials-stage-","ec-control","ec-gain-value","env-post","function","remove-partials-stage-","render-distribution-engine-","render-dump-engine-","render-ramp-engine-","render-seed-engine-","spatial-group-count-engine-","tagged-model-s"]};
var EC_PRESET_VERSION=2;
var ns=String(jsarguments[1])+"-ec-cnmat-sinusoids_";
var ecTransferSequence=0;
var gainValue=0.1, captured=null, collecting=null, collectingKeys={}, pending=0;
var collectingLoop=false, afterCapture=null, restoreBusy=false, handles={};
var timeoutTask=new Task(captureTimeout,this);
var muteTask=new Task(performPendingRecall,this), recallData=null, rollbackData=null;
var unmuteTask=new Task(unmute,this);
function arr(x){return Object.prototype.toString.call(x)==="[object Array]";}
function clone(x){return ec_dataCopy(x);}
function atoms(a){return arrayfromargs(a);}
function status(){outlet(1,atoms(arguments));}
function fail(e){status("error",String(e.message||e));}
function objectAt(path){
 var key=path.join("/"); if(handles[key]&&handles[key].valid)return handles[key];
 var p=this.patcher,o;
 for(var i=0;i<path.length;i++){o=p.getnamed(path[i]);if(!o||!o.valid)throw new Error("Missing object "+key);if(i<path.length-1)p=o.subpatcher();}
 handles[key]=o;return o;
}
function sendObject(o,args){o.message.apply(o,args);}
function bus(name,args){messnamed.apply(this,[ns+name].concat(args));}
function gain(x){
 x=Number(x);if(!isFinite(x)){fail("gain needs a finite number");return;}
 gainValue=Math.max(0,Math.min(1,x));
 objectAt.call(this,["ec_ec_gain_slider"]).message("set",gainValue);
 objectAt.call(this,["ec_ec_gain_number"]).message("set",gainValue);
 if(!restoreBusy)bus("ec-gain-value",[gainValue]);
}
function gaindb(x){x=Number(x);if(!isFinite(x)){fail("gaindb needs a finite number");return;}gain.call(this,Math.pow(10,x/20));}
function msg_float(x){gain.call(this,x);} function msg_int(x){gain.call(this,x);}
function note(p,v){
 p=Number(p);v=v===undefined?100:Number(v);
 if(!isFinite(p)||p!==Math.floor(p)||p<0||p>127||!isFinite(v)||v<0||v>127){fail("note-in expects MIDI pitch 0..127 and velocity 0..127");return;}
 if(v===0)return;
 outlet(2,[p,Math.round(v)]);
 status("note",p,v);
}
function trigger(){if(!restoreBusy)bus("ADSR_12_Lanes_Global_Trigger",["bang"]);}
function stop(){bus("ADSR_12_Lanes_Stop",["bang"]);bus("Envelope_Loop",[0]);}
function control(name){
 var a=atoms(arguments);name=String(a.shift());
 if(EC_MANIFEST.controls.indexOf(name)<0||name.indexOf("ec-")===0){fail("Unknown control "+name);return;}
 if(restoreBusy){fail("Recall in progress");return;}
 bus(name,a.length?a:["bang"]);
}
function anything(){var a=atoms(arguments);if(messagename==="note-in")note.apply(this,a);else if(EC_MANIFEST.controls.indexOf(messagename)>=0)control.apply(this,[messagename].concat(a));else fail("Unknown message "+messagename);}
function loadbang(){gain.call(this,0.1);status("ready","gain",0.1,"build","1.8");}
function bang(){sweep.call(this);}
function sweep(){capture.call(this,null);}
function dump(){capture.call(this,function(d){emitPreset(d);});}
function dumpvalues(){capture.call(this,function(d){for(var k in d.ui)if(d.ui.hasOwnProperty(k))outlet(1,["value",k].concat(d.ui[k].value));outlet(1,"state_json",JSON.stringify(d.engines));});}
function capture(callback){
 var captureStage="start";
 if(collecting||restoreBusy){fail("Preset operation already in progress");return;}
 try{
  var d={format:"ec_cnmat_sinusoids",version:EC_PRESET_VERSION,gain:gainValue,ui:{},engines:{},colls:{}};
  var i,m,o,v,a,j;
  // Materialize control ramps before reading displays; no audio messages emitted.
  for(i=0;i<EC_MANIFEST.engines.length;i++){m=EC_MANIFEST.engines[i];captureStage="engine "+m.key;o=objectAt.call(this,m.path);d.engines[m.key]=engineCall.call(this,m,"export");}
  for(i=0;i<EC_MANIFEST.ui.length;i++){
   m=EC_MANIFEST.ui[i];captureStage="UI "+m.key;o=objectAt.call(this,m.path);v=o.getvalueof();
   if(v===undefined||v===null)throw new Error("Cannot capture "+m.key);
   a={};for(j=0;j<m.attrs.length;j++)a[m.attrs[j]]=o.getattr(m.attrs[j]);
   d.ui[m.key]={value:clone(v),attrs:a};
  }
  collecting=d;collectingKeys={};afterCapture=callback;pending=EC_MANIFEST.colls.length;collectingLoop=true;
  timeoutTask.schedule(2000);
  for(i=0;i<EC_MANIFEST.colls.length;i++){
   m=EC_MANIFEST.colls[i];captureStage="store "+m.key;d.colls[m.key]=[];collectingKeys[m.key]={done:false,key:null};
   objectAt.call(this,m.path).message("dump");
  }
  collectingLoop=false;if(pending===0)finishCapture.call(this);
 }catch(e){abortCapture();fail("capture "+captureStage+": "+String(e.message||e));}
}
function _collkey(k){if(!collecting||!collectingKeys[k])return;var a=atoms(arguments);a.shift();collectingKeys[k].key=a.length===1?a[0]:a;}
function _colldata(k){
 if(!collecting||!collectingKeys[k])return;var a=atoms(arguments);a.shift();
 collecting.colls[k].push({key:clone(collectingKeys[k].key),values:a});
}
function _colldone(k){if(!collecting||!collectingKeys[k]||collectingKeys[k].done)return;collectingKeys[k].done=true;pending--;if(!collectingLoop&&pending===0)finishCapture.call(this);}
function abortCapture(){timeoutTask.cancel();collecting=null;collectingKeys={};pending=0;collectingLoop=false;afterCapture=null;}
function captureTimeout(){abortCapture();fail("User-store capture timed out; no incomplete preset emitted");}
function finishCapture(){
 timeoutTask.cancel();var d=collecting,cb=afterCapture;collecting=null;collectingKeys={};afterCapture=null;
 try{validate.call(this,d);captured=clone(d);status("swept",EC_MANIFEST.ui.length,"controls",EC_MANIFEST.engines.length,"engines",EC_MANIFEST.colls.length,"stores");if(cb)cb.call(this,d);}catch(e){fail("capture finish: "+String(e.message||e));}
}
var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
function encode(s){var r="",i,a,b,c;for(i=0;i<s.length;i+=3){a=s.charCodeAt(i);b=s.charCodeAt(i+1);c=s.charCodeAt(i+2);r+=alphabet.charAt(a>>2)+alphabet.charAt(((a&3)<<4)|(isNaN(b)?0:b>>4))+(isNaN(b)?"=":alphabet.charAt(((b&15)<<2)|(isNaN(c)?0:c>>6)))+(isNaN(c)?"=":alphabet.charAt(c&63));}return r;}
function decode(s){
 if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(s))throw new Error("Invalid preset encoding");
 var r="",i,a,b,c,d;for(i=0;i<s.length;i+=4){a=alphabet.indexOf(s.charAt(i));b=alphabet.indexOf(s.charAt(i+1));c=alphabet.indexOf(s.charAt(i+2));d=alphabet.indexOf(s.charAt(i+3));r+=String.fromCharCode((a<<2)|(b>>4));if(c>=0)r+=String.fromCharCode(((b&15)<<4)|(c>>2));if(d>=0)r+=String.fromCharCode(((c&3)<<6)|d);}return r;
}
function checksum(s){var a=1,b=0;for(var i=0;i<s.length;i++){a=(a+s.charCodeAt(i))%65521;b=(b+a)%65521;}return "h"+(((b<<16)|a)>>>0).toString(16);}
function emitPreset(d){
 // ASCII JSON keeps encoding independent of Max's string/Unicode handling.
 var s=JSON.stringify(d).replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});
 var coded=encode(s),out=["set","preset",d.version,checksum(s)];
 for(var i=0;i<coded.length;i+=512)out.push("p"+coded.substr(i,512));
 outlet(0,out);status("dumped",s.length,"bytes",out.length-4,"chunks");
}
function plain(x,depth){
 if(depth>16)throw new Error("Preset nesting too deep");
 if(x===null||typeof x==="boolean")return;
 if(typeof x==="number"){if(!isFinite(x)||Math.abs(x)>1e16)throw new Error("Invalid preset number");return;}
 if(typeof x==="string"){if(x.length>100000)throw new Error("Preset string too long");return;}
 if(typeof x!=="object")throw new Error("Invalid preset type");
 if(arr(x)){if(x.length>16384)throw new Error("Preset list too long");for(var i=0;i<x.length;i++)plain(x[i],depth+1);return;}
 for(var k in x)if(x.hasOwnProperty(k)){if(k==="__proto__"||k==="constructor"||k==="prototype")throw new Error("Unsafe preset key");plain(x[k],depth+1);}
}
function exactKeys(o,keys){if(!o||arr(o)||Object.keys(o).length!==keys.length)throw new Error("Preset structure mismatch");for(var i=0;i<keys.length;i++)if(!o.hasOwnProperty(keys[i]))throw new Error("Missing preset field "+keys[i]);}
function isDelayUI(m){return m.path.length===3&&m.path[0]==="ec_obj_112"&&m.path[2]==="ec_delay_ms";}
function upgradePreset(d){
 // Version 1 has exactly the original control inventory. Add only the twelve
 // new delay controls, set to zero; never borrow current live delay values.
 if(!d||d.version!==1)return d;
 plain(d,0);
 var legacy=[],i,m;
 for(i=0;i<EC_MANIFEST.ui.length;i++){m=EC_MANIFEST.ui[i];if(!isDelayUI(m))legacy.push(m.key);}
 exactKeys(d.ui,legacy);
 d=clone(d);d.version=EC_PRESET_VERSION;
 for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];if(isDelayUI(m))d.ui[m.key]={value:0,attrs:{}};
 }
 return d;
}
isDelayUI.local=1;upgradePreset.local=1;
function validate(d){
 plain(d,0);exactKeys(d,["format","version","gain","ui","engines","colls"]);
 if(d.format!=="ec_cnmat_sinusoids"||d.version!==EC_PRESET_VERSION||typeof d.gain!=="number"||d.gain<0||d.gain>1)throw new Error("Incompatible preset");
 var i,m,x,k,keys=[];
 for(i=0;i<EC_MANIFEST.ui.length;i++)keys.push(EC_MANIFEST.ui[i].key);exactKeys(d.ui,keys);
 for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];x=d.ui[m.key];exactKeys(x,["value","attrs"]);exactKeys(x.attrs,m.attrs);
  if(!arr(x.value)&&typeof x.value!=="number"&&typeof x.value!=="string")throw new Error("Invalid UI value "+m.key);
  if(isDelayUI(m)){
   var delayValue=arr(x.value)?x.value[0]:x.value;
   if((arr(x.value)&&x.value.length!==1)||typeof delayValue!=="number"||!isFinite(delayValue)||delayValue<0||delayValue>3600000||delayValue!==Math.floor(delayValue))throw new Error("Invalid lane delay "+m.key);
  }
  for(k in x.attrs)if(x.attrs.hasOwnProperty(k)&&(!(Number(x.attrs[k])>0)||Number(x.attrs[k])>3600000))throw new Error("Invalid UI attribute "+m.key);
 }
 keys=[];for(i=0;i<EC_MANIFEST.engines.length;i++)keys.push(EC_MANIFEST.engines[i].key);exactKeys(d.engines,keys);
 for(i=0;i<EC_MANIFEST.engines.length;i++){m=EC_MANIFEST.engines[i];if(!engineCall.call(this,m,"validate",d.engines[m.key]))throw new Error("Invalid engine state "+m.kind);}
 keys=[];for(i=0;i<EC_MANIFEST.colls.length;i++)keys.push(EC_MANIFEST.colls[i].key);exactKeys(d.colls,keys);
 for(k in d.colls)if(d.colls.hasOwnProperty(k)){
  if(!arr(d.colls[k]))throw new Error("Invalid user store");
  for(i=0;i<d.colls[k].length;i++){x=d.colls[k][i];exactKeys(x,["key","values"]);if((typeof x.key!=="number"&&typeof x.key!=="string")||!arr(x.values))throw new Error("Invalid user-store entry");}
 }
 return true;
}
function preset(version,sum){
 if(restoreBusy||collecting){fail("Preset operation already in progress");return;}
 try{
  var a=atoms(arguments);a.splice(0,2);if((Number(version)!==1&&Number(version)!==EC_PRESET_VERSION)||!a.length||a.length>8192)throw new Error("Incompatible preset header");
  var s="";for(var i=0;i<a.length;i++){var token=String(a[i]);if(token.charAt(0)!=="p"||token.length>513)throw new Error("Invalid preset chunk");s+=token.substr(1);}
  s=decode(s);if(checksum(s)!==String(sum))throw new Error("Preset checksum mismatch");
  var d;try{d=JSON.parse(s);}catch(e){throw new Error("preset recall JSON decode: "+String(e.message||e));}
  if(!d||d.version!==Number(version))throw new Error("Preset header/version mismatch");
  d=upgradePreset(d);validate.call(this,d);
  capture.call(this,function(old){recallData=d;rollbackData=old;restoreBusy=true;bus("ec-gain-value",[0]);stop();muteTask.schedule(60);});
 }catch(e){fail(e);}
}
function writeUI(m,v,emit){
 var o=objectAt.call(this,m.path),k;
 for(k in v.attrs)if(v.attrs.hasOwnProperty(k))o.setattr(k,v.attrs[k]);
 // A bang REVERSES a toggle. Restore and output its explicit saved number.
 if(m.type==="toggle"){
  var value=arr(v.value)?v.value[0]:v.value;
  o.message(emit?"int":"set",Number(value));return;
 }
 // setvalueof is the native pattr value API, including function breakpoint lists.
 if(m.type==="kslider")sendObject(o,["set"].concat(v.value));
 else o.setvalueof.apply(o,arr(v.value)?v.value:[v.value]);
 if(emit)o.message("bang");
}
function applyState(d){
 var i,m,o,x;
 // Global ADSR controls fan out to every lane. Replay them BEFORE individual
 // lane overrides, regardless of their position in the saved manifest.
 // Scalars then rebuild native pack/zl/int caches; custom curves follow.
 for(var phase=0;phase<4;phase++)for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];var p=m.path.length===2&&m.path[0]==="ec_obj_112"?0:m.type==="function"?3:m.type==="multislider"?2:1;
  if(p===phase)writeUI.call(this,m,d.ui[m.key],m.replay);
 }
 for(i=0;i<EC_MANIFEST.colls.length;i++){
  m=EC_MANIFEST.colls[i];o=objectAt.call(this,m.path);o.message("clear");
  for(var j=0;j<d.colls[m.key].length;j++){x=d.colls[m.key][j];sendObject(o,["store",x.key].concat(x.values));}
 }
 // Authoritative engine state overrides any temporary UI-generated changes.
 for(i=0;i<EC_MANIFEST.engines.length;i++){m=EC_MANIFEST.engines[i];engineCall.call(this,m,"import",d.engines[m.key]);}
 var order=["retuning","envelope_memory","partial_memory","model","transform","offset","groups","auto_level","add_remove","stops","random","detune_shapes","shapes"];
 for(var n=0;n<order.length;n++)for(i=0;i<EC_MANIFEST.engines.length;i++){
  m=EC_MANIFEST.engines[i];if(m.kind===order[n]){o=objectAt.call(this,m.path);engineCall.call(this,m,"import",d.engines[m.key]);engineCall.call(this,m,"emit");}
 }
 // Direct function edits can differ from sampled points: restore them last.
 for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];if(m.type==="function")writeUI.call(this,m,d.ui[m.key],m.replay);
 }
 // Loop settings are restored, but ADSR playback awaits an explicit trigger.
 gain.call(this,d.gain);
}
function performPendingRecall(){
 try{applyState.call(this,recallData);captured=clone(recallData);status("recalled","trigger to start envelopes");}
 catch(e){try{applyState.call(this,rollbackData);status("rollback","previous settings restored");}catch(r){fail(r);}fail(e);}
 recallData=null;rollbackData=null;unmuteTask.schedule(20);
}
function unmute(){restoreBusy=false;bus("ec-gain-value",[gainValue]);}
function notifydeleted(){timeoutTask.cancel();muteTask.cancel();unmuteTask.cancel();}
// Keep implementation functions off Max's public message dispatch.
objectAt.local=1;sendObject.local=1;bus.local=1;capture.local=1;finishCapture.local=1;abortCapture.local=1;validate.local=1;applyState.local=1;writeUI.local=1;emitPreset.local=1;plain.local=1;exactKeys.local=1;clone.local=1;encode.local=1;decode.local=1;checksum.local=1;performPendingRecall.local=1;unmute.local=1;captureTimeout.local=1;

// Engine state crosses Max's public message boundary, never Maxobj.js.
// JSON remains a string inside Dict, preserving booleans/null/nested arrays.
function engineCall(m,action,data){
 var sequence=++ecTransferSequence;
 var name=ns+"preset-transfer-"+sequence;
 var transfer=new Dict(name),reply;
 try{
  var request={protocol:1,sequence:sequence,kind:m.kind,action:action};
  if(data!==undefined)request.data=data;
  ec_wireWrite(transfer,"request",request);
  objectAt.call(this,m.path).message("ecpreset",name);
  if(!transfer.contains("response_ready"))throw new Error("No preset reply from "+m.key+"; the loaded script did not acknowledge ecpreset");
  reply=ec_wireRead(transfer,"response");
  if(reply.protocol!==1||reply.kind!==m.kind)throw new Error("Mismatched preset reply from "+m.key);
  if(reply.ok!==true)throw new Error(m.key+": "+String(reply.error||"preset operation failed"));
  if(reply.sequence!==sequence)throw new Error("Mismatched preset reply from "+m.key);
  return reply.data;
 }catch(e){throw new Error("preset "+action+" "+m.key+": "+String(e.message||e));}
 finally{transfer.clear();transfer.freepeer();}
}
function check(){
 var failed=0;
 for(var i=0;i<EC_MANIFEST.engines.length;i++){
  try{
   var m=EC_MANIFEST.engines[i];engineCall.call(this,m,"ping");
   var probe=engineCall.call(this,m,"export");
   if(!engineCall.call(this,m,"validate",probe))throw new Error("Preset check rejected state from "+m.key);
  }
  catch(e){failed++;fail(e);}
 }
 if(failed)status("preset_bridge_failed",failed,"of",EC_MANIFEST.engines.length,"engines");
 else status("preset_bridge_ok",EC_MANIFEST.engines.length,"engines");
}
engineCall.local=1;

// Private preset transport. Short ASCII-only atoms avoid quote/token conversion
// and unbounded strings at the Max Dict boundary. No runtime include is needed.
function ec_dataCopy(x,depth){
 depth=depth||0;if(depth>32)throw new Error("Preset copy nesting limit");
 if(x===null)return null;
 var t=typeof x,i,k,r;
 if(t==="string"||t==="boolean")return x;
 if(t==="number"){if(!isFinite(x))throw new Error("Non-finite preset value");return x;}
 if(Object.prototype.toString.call(x)==="[object Array]"){
  r=[];for(i=0;i<x.length;i++)r[i]=x[i]===undefined?null:ec_dataCopy(x[i],depth+1);return r;
 }
 if(t==="object"){
  r={};for(k in x)if(Object.prototype.hasOwnProperty.call(x,k)&&x[k]!==undefined){
   if(k==="__proto__"||k==="constructor"||k==="prototype")throw new Error("Unsafe preset key");
   r[k]=ec_dataCopy(x[k],depth+1);
  }return r;
 }
 throw new Error("Unsupported preset value type "+t);
}
function ec_wireEncode(s){
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c;
 for(i=0;i<s.length;i+=3){a=s.charCodeAt(i);b=s.charCodeAt(i+1);c=s.charCodeAt(i+2);r+=alphabet.charAt(a>>2)+alphabet.charAt(((a&3)<<4)|(isNaN(b)?0:b>>4))+(isNaN(b)?"=":alphabet.charAt(((b&15)<<2)|(isNaN(c)?0:c>>6)))+(isNaN(c)?"=":alphabet.charAt(c&63));}return r;
}
function ec_wireDecode(s){
 if(!/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(s))throw new Error("Invalid Base64 chunk");
 var alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",r="",i,a,b,c,d;
 for(i=0;i<s.length;i+=4){a=alphabet.indexOf(s.charAt(i));b=alphabet.indexOf(s.charAt(i+1));c=alphabet.indexOf(s.charAt(i+2));d=alphabet.indexOf(s.charAt(i+3));r+=String.fromCharCode((a<<2)|(b>>4));if(c>=0)r+=String.fromCharCode(((b&15)<<4)|(c>>2));if(d>=0)r+=String.fromCharCode(((c&3)<<6)|d);}return r;
}
function ec_wireChecksum(s){var a=1,b=0;for(var i=0;i<s.length;i++){a=(a+s.charCodeAt(i))%65521;b=(b+a)%65521;}return "h"+(((b<<16)|a)>>>0).toString(16);}
function ec_wireAtom(dict,key){
 var x=dict.get(key);
 if(Object.prototype.toString.call(x)==="[object Array]"&&x.length===1)x=x[0];
 return x;
}
function ec_wireWrite(dict,key,value){
 dict.set(key+"_ready",0);
 var raw=JSON.stringify(value);
 if(typeof raw!=="string")throw new Error(key+": JSON serialization returned no string");
 raw=raw.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});
 var coded=ec_wireEncode(raw),count=Math.ceil(coded.length/480);
 if(count<1||count>8192)throw new Error(key+": preset transfer too large");
 dict.set(key+"_format","ecb64v1");dict.set(key+"_chars",raw.length);
 dict.set(key+"_encoded",coded.length);dict.set(key+"_sum",ec_wireChecksum(raw));
 dict.set(key+"_count",count);
 for(var i=0;i<count;i++)dict.set(key+"_"+i,"p"+coded.substr(i*480,480));
 dict.set(key+"_ready",1);
}
function ec_wireRead(dict,key){
 if(Number(ec_wireAtom(dict,key+"_ready"))!==1)throw new Error(key+": transfer not complete");
 if(ec_wireAtom(dict,key+"_format")!=="ecb64v1")throw new Error(key+": unsupported transfer format");
 var count=Number(ec_wireAtom(dict,key+"_count")),length=Number(ec_wireAtom(dict,key+"_encoded"));
 var chars=Number(ec_wireAtom(dict,key+"_chars")),sum=ec_wireAtom(dict,key+"_sum");
 if(!isFinite(count)||count!==Math.floor(count)||count<1||count>8192||
    !isFinite(length)||length!==Math.floor(length)||length<4||length%4||Math.ceil(length/480)!==count||
    !isFinite(chars)||chars!==Math.floor(chars)||chars<1||chars>count*360)throw new Error(key+": invalid transfer dimensions");
 var raw="",part,i;
 for(i=0;i<count;i++){
  part=ec_wireAtom(dict,key+"_"+i);
  if(typeof part!=="string"||part.charAt(0)!=="p"||part.length!==1+Math.min(480,length-i*480))throw new Error(key+": missing or truncated chunk "+i);
  try{raw+=ec_wireDecode(part.substr(1));}catch(e){throw new Error(key+": corrupt chunk "+i+": "+String(e.message||e));}
 }
 if(raw.length!==chars||ec_wireChecksum(raw)!==sum)throw new Error(key+": transfer checksum mismatch");
 try{return JSON.parse(raw);}catch(e){throw new Error(key+": JSON decode failed after verified transfer ("+raw.length+" chars): "+String(e.message||e));}
}
ec_dataCopy.local=1;ec_wireEncode.local=1;ec_wireDecode.local=1;ec_wireChecksum.local=1;
ec_wireAtom.local=1;ec_wireWrite.local=1;ec_wireRead.local=1;
