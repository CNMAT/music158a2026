/* Full v23 synth controller, adapted from the supplied lowcpu feature controller. Classic Max js (ES5).
   Presets are JSON encoded as bounded Base64 symbol chunks, with Adler-32.
   No eval or network access. MorphBank file I/O uses Max's native File API.
   This copy uses the V3_ voice namespace. MorphBank revision 2 (A-X): slot times, eased transport, jump and cue loop. */
autowatch=1; inlets=3; outlets=6;
var EC_MANIFEST = {"ui":[{"path":["ec_obj_84"],"key":"ec_obj_84","type":"flonum","replay":false,"attrs":[]},{"path":["ec_base_morph_v23_value"],"key":"ec_base_morph_v23_value","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_81"],"key":"ec_obj_81","type":"kslider","replay":false,"attrs":[]},{"path":["ec_obj_76"],"key":"ec_obj_76","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_shape_menu"],"key":"ec_obj_112/ec_all_lane_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_loops_toggle"],"key":"ec_obj_112/ec_all_lane_loops_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_count"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_count","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_duration"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_menu"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_points"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_points","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_function"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_memory_index"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_memory_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_loop_toggle"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_smoothing_ms"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_smoothing_ms"],"key":"ec_obj_112/ec_all_lane_smoothing_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_all_lane_duration_ms"],"key":"ec_obj_112/ec_all_lane_duration_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_63"],"key":"ec_obj_63","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_51"],"key":"ec_obj_51","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_47"],"key":"ec_obj_47","type":"multislider","replay":false,"attrs":["size"]},{"path":["ec_obj_21","ec_obj_8"],"key":"ec_obj_21/ec_obj_8","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_6","ec_obj_count_number"],"key":"ec_obj_21/ec_obj_6/ec_obj_count_number","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_count_slider"],"key":"ec_obj_21/ec_obj_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_duration"],"key":"ec_obj_21/ec_obj_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_multislider"],"key":"ec_obj_21/ec_obj_multislider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_obj_21","ec_obj_function"],"key":"ec_obj_21/ec_obj_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_obj_21","ec_obj_coll_index"],"key":"ec_obj_21/ec_obj_coll_index","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_obj_shape_menu_norm"],"key":"ec_obj_21/ec_obj_shape_menu_norm","type":"umenu","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_adsr_morph_ms"],"key":"ec_obj_21/ec_adsr_morph_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_21","ec_master_loop_toggle"],"key":"ec_obj_21/ec_master_loop_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_34"],"key":"ec_obj_34","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_seed14"],"key":"ec_obj_32/ec_seed14","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_on14"],"key":"ec_obj_32/ec_micro_on14","type":"toggle","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_depth14"],"key":"ec_obj_32/ec_micro_depth14","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_time14"],"key":"ec_obj_32/ec_micro_time14","type":"flonum","replay":true,"attrs":[]},{"path":["ec_obj_32","ec_micro_live14"],"key":"ec_obj_32/ec_micro_live14","type":"flonum","replay":false,"attrs":[]},{"path":["ec_obj_32","ec_micro_off_time_v23"],"key":"ec_obj_32/ec_micro_off_time_v23","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_count_slider"],"key":"ec_syn_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_syn_count_display"],"key":"ec_syn_count_display","type":"number","replay":true,"attrs":[]},{"path":["ec_syn_base"],"key":"ec_syn_base","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_drift"],"key":"ec_syn_drift","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_freq_slider"],"key":"ec_syn_freq_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_amp_slider"],"key":"ec_syn_amp_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_sr_display"],"key":"ec_syn_sr_display","type":"flonum","replay":false,"attrs":[]},{"path":["ec_syn_alias_toggle"],"key":"ec_syn_alias_toggle","type":"toggle","replay":false,"attrs":[]},{"path":["ec_obj_17","ec_obj_max_display"],"key":"ec_obj_17/ec_obj_max_display","type":"flonum","replay":false,"attrs":[]},{"path":["ec_syn_freq_shape_menu"],"key":"ec_syn_freq_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_amp_shape_menu"],"key":"ec_syn_amp_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_harmonic_amp_slider"],"key":"ec_syn_harmonic_amp_slider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_syn_harmonic_shape_menu"],"key":"ec_syn_harmonic_shape_menu","type":"umenu","replay":true,"attrs":[]},{"path":["ec_syn_freq_interp_ms"],"key":"ec_syn_freq_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_amp_interp_ms"],"key":"ec_syn_amp_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_syn_harmonic_interp_ms"],"key":"ec_syn_harmonic_interp_ms","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_mode"],"key":"ec_rt14_mode","type":"umenu","replay":true,"attrs":[]},{"path":["ec_rt14_target"],"key":"ec_rt14_target","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_glide"],"key":"ec_rt14_glide","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_current"],"key":"ec_rt14_current","type":"flonum","replay":false,"attrs":[]},{"path":["ec_rt14_bypass"],"key":"ec_rt14_bypass","type":"toggle","replay":true,"attrs":[]},{"path":["ec_rt14_semitones"],"key":"ec_rt14_semitones","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_cents"],"key":"ec_rt14_cents","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_offset"],"key":"ec_rt14_offset","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_gain"],"key":"ec_rt14_gain","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_low"],"key":"ec_rt14_low","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_high"],"key":"ec_rt14_high","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rt14_cluster"],"key":"ec_rt14_cluster","type":"flonum","replay":true,"attrs":[]},{"path":["ec_rm14_count"],"key":"ec_rm14_count","type":"number","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle0"],"key":"ec_stops_workspace14/ec_toggle0","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle1"],"key":"ec_stops_workspace14/ec_toggle1","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle2"],"key":"ec_stops_workspace14/ec_toggle2","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle3"],"key":"ec_stops_workspace14/ec_toggle3","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle4"],"key":"ec_stops_workspace14/ec_toggle4","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle5"],"key":"ec_stops_workspace14/ec_toggle5","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle6"],"key":"ec_stops_workspace14/ec_toggle6","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle7"],"key":"ec_stops_workspace14/ec_toggle7","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle8"],"key":"ec_stops_workspace14/ec_toggle8","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle9"],"key":"ec_stops_workspace14/ec_toggle9","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle10"],"key":"ec_stops_workspace14/ec_toggle10","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle11"],"key":"ec_stops_workspace14/ec_toggle11","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle12"],"key":"ec_stops_workspace14/ec_toggle12","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_toggle13"],"key":"ec_stops_workspace14/ec_toggle13","type":"toggle","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_beat"],"key":"ec_stops_workspace14/ec_beat","type":"flonum","replay":true,"attrs":[]},{"path":["ec_stops_workspace14","ec_tail"],"key":"ec_stops_workspace14/ec_tail","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_8"],"key":"ec_envelope_shaper01/ec_obj_8","type":"number","replay":false,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_6","ec_obj_count_number"],"key":"ec_envelope_shaper01/ec_obj_6/ec_obj_count_number","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_count_slider"],"key":"ec_envelope_shaper01/ec_obj_count_slider","type":"slider","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_duration"],"key":"ec_envelope_shaper01/ec_obj_duration","type":"flonum","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_multislider"],"key":"ec_envelope_shaper01/ec_obj_multislider","type":"multislider","replay":true,"attrs":["size"]},{"path":["ec_envelope_shaper01","ec_obj_function"],"key":"ec_envelope_shaper01/ec_obj_function","type":"function","replay":true,"attrs":["domain"]},{"path":["ec_envelope_shaper01","ec_obj_coll_index"],"key":"ec_envelope_shaper01/ec_obj_coll_index","type":"number","replay":true,"attrs":[]},{"path":["ec_envelope_shaper01","ec_obj_shape_menu_norm"],"key":"ec_envelope_shaper01/ec_obj_shape_menu_norm","type":"umenu","replay":true,"attrs":[]},{"path":["ec_v23_render_controls","ec_distribution"],"key":"ec_v23_render_controls/ec_distribution","type":"umenu","replay":true,"attrs":[]},{"path":["ec_v23_render_controls","ec_groups"],"key":"ec_v23_render_controls/ec_groups","type":"number","replay":true,"attrs":[]},{"path":["ec_v23_render_controls","ec_seed"],"key":"ec_v23_render_controls/ec_seed","type":"number","replay":true,"attrs":[]},{"path":["ec_v23_render_controls","ec_ramp"],"key":"ec_v23_render_controls/ec_ramp","type":"flonum","replay":true,"attrs":[]},{"path":["ec_partial_offset_v23_toggle"],"key":"ec_partial_offset_v23_toggle","type":"toggle","replay":true,"attrs":[]},{"path":["ec_partial_offset_v23_number"],"key":"ec_partial_offset_v23_number","type":"number","replay":true,"attrs":[]},{"path":["ec_alc_on"],"key":"ec_alc_on","type":"toggle","replay":true,"attrs":[]},{"path":["ec_alc_db"],"key":"ec_alc_db","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_gain"],"key":"ec_alc_gain","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_strength"],"key":"ec_alc_strength","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_smooth"],"key":"ec_alc_smooth","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_maxboost"],"key":"ec_alc_maxboost","type":"flonum","replay":true,"attrs":[]},{"path":["ec_alc_model"],"key":"ec_alc_model","type":"flonum","replay":false,"attrs":[]},{"path":["ec_alc_reference"],"key":"ec_alc_reference","type":"flonum","replay":false,"attrs":[]},{"path":["ec_anchor_mirror_v23_6"],"key":"ec_anchor_mirror_v23_6","type":"toggle","replay":true,"attrs":[]},{"path":["ec_anchor_scale_v23_6"],"key":"ec_anchor_scale_v23_6","type":"flonum","replay":true,"attrs":[]},{"path":["ec_ec_gain_slider"],"key":"ec_ec_gain_slider","type":"slider","replay":false,"attrs":[]},{"path":["ec_ec_gain_number"],"key":"ec_ec_gain_number","type":"flonum","replay":false,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_01","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_delay_ms"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_delay_ms","type":"number","replay":true,"attrs":[]},{"path":["ec_opt_distribution"],"key":"ec_opt_distribution","type":"umenu","replay":true,"attrs":[]},{"path":["ec_am_ui_mode"],"key":"ec_am_ui_mode","type":"umenu","replay":true,"attrs":[]},{"path":["ec_am_ui_min"],"key":"ec_am_ui_min","type":"flonum","replay":true,"attrs":[]},{"path":["ec_am_ui_max"],"key":"ec_am_ui_max","type":"flonum","replay":true,"attrs":[]},{"path":["ec_am_ui_wait"],"key":"ec_am_ui_wait","type":"flonum","replay":true,"attrs":[]},{"path":["ec_am_ui_peak"],"key":"ec_am_ui_peak","type":"toggle","replay":true,"attrs":[]},{"path":["ec_am_ui_grain"],"key":"ec_am_ui_grain","type":"number","replay":true,"attrs":[]},{"path":["ec_obj_74"],"key":"ec_obj_74","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_1"],"key":"ec_obj_1","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_25"],"key":"ec_obj_25","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_50"],"key":"ec_obj_50","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_65"],"key":"ec_obj_65","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_66"],"key":"ec_obj_66","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_67"],"key":"ec_obj_67","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_68"],"key":"ec_obj_68","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_69"],"key":"ec_obj_69","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_70"],"key":"ec_obj_70","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_71"],"key":"ec_obj_71","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_72"],"key":"ec_obj_72","type":"live.gain~","replay":true,"attrs":[]},{"path":["ec_obj_73"],"key":"ec_obj_73","type":"live.gain~","replay":true,"attrs":[]}],"engines":[{"path":["ec_obj_112","ec_lane_bpatch_01","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_01/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_02","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_02/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_03","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_03/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_04","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_04/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_05","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_05/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_06","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_06/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_07","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_07/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_08","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_08/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_09","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_09/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_10","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_10/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_11","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_11/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_112","ec_lane_bpatch_12","ec_shape_smoothing_engine"],"key":"ec_obj_112/ec_lane_bpatch_12/ec_shape_smoothing_engine","kind":"envelope_memory"},{"path":["ec_obj_21","ec_adsr_morph_engine"],"key":"ec_obj_21/ec_adsr_morph_engine","kind":"envelope_memory"},{"path":["ec_syn_js"],"key":"ec_syn_js","kind":"model"},{"path":["ec_syn_random_js"],"key":"ec_syn_random_js","kind":"random"},{"path":["ec_syn_interpolation_js"],"key":"ec_syn_interpolation_js","kind":"partial_memory"},{"path":["ec_rt14_retuning"],"key":"ec_rt14_retuning","kind":"retuning"},{"path":["ec_rt14_transform"],"key":"ec_rt14_transform","kind":"transform"},{"path":["ec_rm14_weight_library"],"key":"ec_rm14_weight_library","kind":"shapes"},{"path":["ec_rm14_engine"],"key":"ec_rm14_engine","kind":"add_remove"},{"path":["ec_stops_workspace14","ec_js"],"key":"ec_stops_workspace14/ec_js","kind":"stops"},{"path":["ec_detune_shapes_v23"],"key":"ec_detune_shapes_v23","kind":"detune_shapes"},{"path":["ec_sinusoids_audio_rendering_v23","ec_manager"],"key":"ec_sinusoids_audio_rendering_v23/ec_manager","kind":"groups"},{"path":["ec_sinusoids_audio_rendering_v23","ec_offset_crossfade_js_v23_6"],"key":"ec_sinusoids_audio_rendering_v23/ec_offset_crossfade_js_v23_6","kind":"offset"},{"path":["ec_alc_engine_v23","ec_js"],"key":"ec_alc_engine_v23/ec_js","kind":"auto_level"}],"colls":[{"key":"c0","path":["ec_obj_112","ec_lane_bpatch_01","ec_v23_proxy_c0"]},{"key":"c1","path":["ec_obj_112","ec_lane_bpatch_02","ec_v23_proxy_c1"]},{"key":"c2","path":["ec_obj_112","ec_lane_bpatch_03","ec_v23_proxy_c2"]},{"key":"c3","path":["ec_obj_112","ec_lane_bpatch_04","ec_v23_proxy_c3"]},{"key":"c4","path":["ec_obj_112","ec_lane_bpatch_05","ec_v23_proxy_c4"]},{"key":"c5","path":["ec_obj_112","ec_lane_bpatch_06","ec_v23_proxy_c5"]},{"key":"c6","path":["ec_obj_112","ec_lane_bpatch_07","ec_v23_proxy_c6"]},{"key":"c7","path":["ec_obj_112","ec_lane_bpatch_08","ec_v23_proxy_c7"]},{"key":"c8","path":["ec_obj_112","ec_lane_bpatch_09","ec_v23_proxy_c8"]},{"key":"c9","path":["ec_obj_112","ec_lane_bpatch_10","ec_v23_proxy_c9"]},{"key":"c10","path":["ec_obj_112","ec_lane_bpatch_11","ec_v23_proxy_c10"]},{"key":"c11","path":["ec_obj_112","ec_lane_bpatch_12","ec_v23_proxy_c11"]},{"key":"c12","path":["ec_obj_21","ec_v23_proxy_c12"]},{"key":"c13","path":["ec_envelope_shaper01","ec_v23_proxy_c13"]}],"controls":["ADSR_12_Lanes_Duration_ms","ADSR_12_Lanes_Global_Trigger","ADSR_12_Lanes_Loop","ADSR_12_Lanes_Shape","ADSR_12_Lanes_Smoothing_ms","ADSR_12_Lanes_Stop","ADSR_Breakpoints","ADSR_Duration_ms","ADSR_Duration_ms_done","ADSR_Emit","ADSR_Lane_01_Breakpoints","ADSR_Lane_01_Delay_ms","ADSR_Lane_01_Duration_ms","ADSR_Lane_01_Emit","ADSR_Lane_01_Loop","ADSR_Lane_01_Points","ADSR_Lane_01_Recall","ADSR_Lane_01_Shape","ADSR_Lane_01_Smoothing_ms","ADSR_Lane_01_Stop","ADSR_Lane_01_Store","ADSR_Lane_01_Store_Index","ADSR_Lane_01_Trigger","ADSR_Lane_02_Breakpoints","ADSR_Lane_02_Delay_ms","ADSR_Lane_02_Duration_ms","ADSR_Lane_02_Emit","ADSR_Lane_02_Loop","ADSR_Lane_02_Points","ADSR_Lane_02_Recall","ADSR_Lane_02_Shape","ADSR_Lane_02_Smoothing_ms","ADSR_Lane_02_Stop","ADSR_Lane_02_Store","ADSR_Lane_02_Store_Index","ADSR_Lane_02_Trigger","ADSR_Lane_03_Breakpoints","ADSR_Lane_03_Delay_ms","ADSR_Lane_03_Duration_ms","ADSR_Lane_03_Emit","ADSR_Lane_03_Loop","ADSR_Lane_03_Points","ADSR_Lane_03_Recall","ADSR_Lane_03_Shape","ADSR_Lane_03_Smoothing_ms","ADSR_Lane_03_Stop","ADSR_Lane_03_Store","ADSR_Lane_03_Store_Index","ADSR_Lane_03_Trigger","ADSR_Lane_04_Breakpoints","ADSR_Lane_04_Delay_ms","ADSR_Lane_04_Duration_ms","ADSR_Lane_04_Emit","ADSR_Lane_04_Loop","ADSR_Lane_04_Points","ADSR_Lane_04_Recall","ADSR_Lane_04_Shape","ADSR_Lane_04_Smoothing_ms","ADSR_Lane_04_Stop","ADSR_Lane_04_Store","ADSR_Lane_04_Store_Index","ADSR_Lane_04_Trigger","ADSR_Lane_05_Breakpoints","ADSR_Lane_05_Delay_ms","ADSR_Lane_05_Duration_ms","ADSR_Lane_05_Emit","ADSR_Lane_05_Loop","ADSR_Lane_05_Points","ADSR_Lane_05_Recall","ADSR_Lane_05_Shape","ADSR_Lane_05_Smoothing_ms","ADSR_Lane_05_Stop","ADSR_Lane_05_Store","ADSR_Lane_05_Store_Index","ADSR_Lane_05_Trigger","ADSR_Lane_06_Breakpoints","ADSR_Lane_06_Delay_ms","ADSR_Lane_06_Duration_ms","ADSR_Lane_06_Emit","ADSR_Lane_06_Loop","ADSR_Lane_06_Points","ADSR_Lane_06_Recall","ADSR_Lane_06_Shape","ADSR_Lane_06_Smoothing_ms","ADSR_Lane_06_Stop","ADSR_Lane_06_Store","ADSR_Lane_06_Store_Index","ADSR_Lane_06_Trigger","ADSR_Lane_07_Breakpoints","ADSR_Lane_07_Delay_ms","ADSR_Lane_07_Duration_ms","ADSR_Lane_07_Emit","ADSR_Lane_07_Loop","ADSR_Lane_07_Points","ADSR_Lane_07_Recall","ADSR_Lane_07_Shape","ADSR_Lane_07_Smoothing_ms","ADSR_Lane_07_Stop","ADSR_Lane_07_Store","ADSR_Lane_07_Store_Index","ADSR_Lane_07_Trigger","ADSR_Lane_08_Breakpoints","ADSR_Lane_08_Delay_ms","ADSR_Lane_08_Duration_ms","ADSR_Lane_08_Emit","ADSR_Lane_08_Loop","ADSR_Lane_08_Points","ADSR_Lane_08_Recall","ADSR_Lane_08_Shape","ADSR_Lane_08_Smoothing_ms","ADSR_Lane_08_Stop","ADSR_Lane_08_Store","ADSR_Lane_08_Store_Index","ADSR_Lane_08_Trigger","ADSR_Lane_09_Breakpoints","ADSR_Lane_09_Delay_ms","ADSR_Lane_09_Duration_ms","ADSR_Lane_09_Emit","ADSR_Lane_09_Loop","ADSR_Lane_09_Points","ADSR_Lane_09_Recall","ADSR_Lane_09_Shape","ADSR_Lane_09_Smoothing_ms","ADSR_Lane_09_Stop","ADSR_Lane_09_Store","ADSR_Lane_09_Store_Index","ADSR_Lane_09_Trigger","ADSR_Lane_10_Breakpoints","ADSR_Lane_10_Delay_ms","ADSR_Lane_10_Duration_ms","ADSR_Lane_10_Emit","ADSR_Lane_10_Loop","ADSR_Lane_10_Points","ADSR_Lane_10_Recall","ADSR_Lane_10_Shape","ADSR_Lane_10_Smoothing_ms","ADSR_Lane_10_Stop","ADSR_Lane_10_Store","ADSR_Lane_10_Store_Index","ADSR_Lane_10_Trigger","ADSR_Lane_11_Breakpoints","ADSR_Lane_11_Delay_ms","ADSR_Lane_11_Duration_ms","ADSR_Lane_11_Emit","ADSR_Lane_11_Loop","ADSR_Lane_11_Points","ADSR_Lane_11_Recall","ADSR_Lane_11_Shape","ADSR_Lane_11_Smoothing_ms","ADSR_Lane_11_Stop","ADSR_Lane_11_Store","ADSR_Lane_11_Store_Index","ADSR_Lane_11_Trigger","ADSR_Lane_12_Breakpoints","ADSR_Lane_12_Delay_ms","ADSR_Lane_12_Duration_ms","ADSR_Lane_12_Emit","ADSR_Lane_12_Loop","ADSR_Lane_12_Points","ADSR_Lane_12_Recall","ADSR_Lane_12_Shape","ADSR_Lane_12_Smoothing_ms","ADSR_Lane_12_Stop","ADSR_Lane_12_Store","ADSR_Lane_12_Store_Index","ADSR_Lane_12_Trigger","ADSR_Lane_Smoothing_ms","ADSR_Morph_ms","ADSR_Points","ADSR_Recall","ADSR_Shape","ADSR_Store","ADSR_Store_Index","Add_Partials","All_Off","Amplitude_Morph_ms","Amplitude_Morph_ms_done","Amplitude_Shape","Amplitude_Values","Anchor_Mirror","Anchor_Morph_ms","Anchor_Morph_ms_done","Anchor_Scale","Anchor_Shape","Anchor_Values","Audio_On","Auto_Level","Automixer","Cents","Cents_done","Cluster_Hz","Cluster_Hz_done","Copy_Amplitude_to_Anchor","Copy_Amplitude_to_Drift","Direction_Seed","Drift_Morph_ms","Drift_Morph_ms_done","Drift_Shape","Drift_Values","Envelope_Loop","Envelope_Trigger","Library_Breakpoints","Library_Duration_ms","Library_Emit","Library_Points","Library_Shape","Library_Store","Library_Store_Index","Max_Drift","Max_Drift_done","Maximum_Hz","Maximum_Hz_done","Micro_Depth_Hz","Micro_Depth_Hz_done","Micro_Off_Morph_ms","Micro_On","Micro_Segment_ms","Micro_Segment_ms_done","Minimum_Hz","Minimum_Hz_done","Model_Gain","Model_Gain_done","Octave_Family","Offset_Hz","Offset_Hz_done","Output_Gain_dB","Partial_Amplitude","Partial_Amplitude_current","Partial_Amplitude_done","Partial_Anchor","Partial_Anchor_current","Partial_Anchor_done","Partial_Count","Partial_Distribution","Partial_Drift","Partial_Drift_current","Partial_Drift_done","Partial_Offset_Crossfade","Partial_Offset_Number","Partial_Offset_On","Post_Bypass","Random_Amplitude","Random_Anchor","Random_Drift","Registration","Removal_Count","Removal_Shape","Remove_Partials","Render_Distribution","Render_Ramp_ms","Render_Seed","Renderer_Reemit","Retune_ms","Retune_ms_done","Retuning_Mode","Semitones","Semitones_done","Source_Base_Hz","Source_Base_Hz_done","Spatial_Group_Count","Standalone_Breakpoints","Standalone_Duration_ms","Standalone_Emit","Standalone_Points","Standalone_Recall","Standalone_Shape","Standalone_Store","Standalone_Store_Index","Stop_0","Stop_1","Stop_10","Stop_11","Stop_12","Stop_13","Stop_2","Stop_3","Stop_4","Stop_5","Stop_6","Stop_7","Stop_8","Stop_9","Stop_Beat_Hz","Stop_Beat_Hz_done","Stop_Tail","Stops_Apply","Stops_Clear","Synth_Control","Target_Base_Hz","Target_Base_Hz_done","ec-gain-value","ec-preset-collect","env-post","tagged-model-s"]};
EC_MANIFEST.controls.push("MIDI_Channel");
var EC_PRESET_VERSION=2;
var ns="V3_ec-cnmat-sinusoids-v23_";
var ecTransferSequence=0;
var gainValue=1.0, captured=null, collecting=null, collectingKeys={}, pending=0;
var collectingLoop=false, afterCapture=null, restoreBusy=false, handles={};
var timeoutTask=new Task(captureTimeout,this);
var muteTask=new Task(performPendingRecall,this), recallData=null, rollbackData=null;
var unmuteTask=new Task(unmute,this);
function arr(x){return Object.prototype.toString.call(x)==="[object Array]";}
function clone(x){return ec_dataCopy(x);}
function atoms(a){return arrayfromargs(a);}
function status(){outlet(1,atoms(arguments));}
function fail(e){if(threeCapture){threeSignal(threeCapture,"error",e);threeCapture="";}if(threeLink)threeSignal(threeLink,"error",e);status("error",String(e.message||e));}
function objectAt(path){
 var key=path.join("/"); if(handles[key]&&handles[key].valid)return handles[key];
 var p=this.patcher,o;
 for(var i=0;i<path.length;i++){o=p.getnamed("V3_"+path[i]);if(!o||!o.valid)throw new Error("Missing object "+key);if(i<path.length-1)p=o.subpatcher();}
 handles[key]=o;return o;
}
function sendObject(o,args){o.message.apply(o,args);}
function bus(name,args){messnamed.apply(this,["V3_"+name+"_v23"].concat(args));}
function gain(x){
 if(typeof morphRun!=="undefined"&&(morphRun||morphCue)&&!morphWriting)morphabort.call(this);
 x=Number(x);if(!isFinite(x)){fail("gain needs a finite number");return;}
 gainValue=Math.max(0,Math.min(1,x));
 objectAt.call(this,["ec_ec_gain_slider"]).message("set",gainValue);
 objectAt.call(this,["ec_ec_gain_number"]).message("set",gainValue);
 if(!restoreBusy)bus("ec-gain-value",[gainValue]);
 bus("Synth_Gain_state",[gainValue]);
}
function gaindb(x){x=Number(x);if(!isFinite(x)){fail("gaindb needs a finite number");return;}gain.call(this,Math.pow(10,x/20));}
function msg_float(x){gain.call(this,x);} function msg_int(x){gain.call(this,x);}
function note(p,v){
 if(restoreBusy){fail("Recall in progress");return;}
 p=Number(p);v=v===undefined?100:Number(v);
 if(!isFinite(p)||p!==Math.floor(p)||p<0||p>127||!isFinite(v)||v<0||v>127){fail("note-in expects MIDI pitch 0..127 and velocity 0..127");return;}
 if(v===0)return;
 outlet(2,[p,Math.round(v)]);
 status("note",p,v);
}
function trigger(){if(!restoreBusy)bus("ADSR_12_Lanes_Global_Trigger",["bang"]);}
function stop(){if(morphCue)morphstop.call(this);bus("ADSR_12_Lanes_Stop",["bang"]);bus("Envelope_Loop",[0]);}
function control(name){
 var a=atoms(arguments);name=String(a.shift());
 // Morph workflow commands share the existing control entry point. They remain
 // available while a morph runs, unlike ordinary manual parameter edits.
 if(morphCommand(name)){morphCommand(name).apply(this,a);return;}
 if(EC_MANIFEST.controls.indexOf(name)<0||name.indexOf("ec-")===0||name==="Synth_Control"){fail("Unknown control "+name);return;}
 if(restoreBusy||morphRun){fail("Hold the full-state morph before editing addressed controls");return;}
 
 if(name==="Partial_Distribution"&&(a.length!==1||[0,1,2,3].indexOf(Number(a[0]))<0)){fail("Partial_Distribution expects 0, 1, 2, or 3");return;}
 bus(name,a.length?a:["bang"]);
}
function anything(){var a=atoms(arguments),fn=morphCommand(messagename);if(fn){fn.apply(this,a);return;}if(messagename==="note-in")note.apply(this,a);else if(EC_MANIFEST.controls.indexOf(messagename)>=0)control.apply(this,[messagename].concat(a));else fail("Unknown message "+messagename);}
// Count authority for UI, external messages and preset recall. Runtime-only
// fields; the existing count UI and partial-memory state remain the preset data.
var countLimit=256, activeCount=32, countReady=false, countGuard=false;
function showCount(value){
 objectAt.call(this,["ec_syn_count_slider"]).message("set",value-2);
 objectAt.call(this,["ec_syn_count_display"]).message("set",value);
}
function applyCount(value,force){
 value=Number(value);if(!isFinite(value))return;
 value=Math.max(2,Math.min(countLimit,Math.round(value)));
 var changed=!countReady||value!==activeCount;activeCount=value;countReady=true;
 showCount.call(this,value);
 if(changed||force){
  objectAt.call(this,["ec_syn_count_split"]).message("int",value);
  bus("Partial_Count_state",[value]);
 }
}
function _count(value){
 if(countGuard||restoreBusy||morphRun)return;
 applyCount.call(this,value,false);
}
showCount.local=1;applyCount.local=1;

function loadbang(){gain.call(this,1.0);morphDisplayState.call(this);status("ready","full-v23","gain",1.0);}
function bang(){sweep.call(this);}
function sweep(){capture.call(this,null);}
function dump(){capture.call(this,function(d){emitPreset(d);});}
function dumpvalues(){capture.call(this,function(d){for(var k in d.ui)if(d.ui.hasOwnProperty(k))outlet(1,["value",k].concat(d.ui[k].value));outlet(1,"state_json",JSON.stringify(d.engines));});}
function capture(callback){
 var captureStage="start";
 if(collecting||restoreBusy){fail("Preset operation already in progress");return;}
 try{
  var d={format:"ec_cnmat_sinusoids_full_v23",version:EC_PRESET_VERSION,gain:gainValue,ui:{},engines:{},colls:{}};
  var i,m,o,v,a,j;
  // Materialize control ramps before reading displays; no audio messages emitted.
  for(i=0;i<EC_MANIFEST.engines.length;i++){m=EC_MANIFEST.engines[i];captureStage="engine "+m.key;o=objectAt.call(this,m.path);d.engines[m.key]=engineCall.call(this,m,"export");}
  for(i=0;i<EC_MANIFEST.ui.length;i++){
   m=EC_MANIFEST.ui[i];captureStage="UI "+m.key;o=objectAt.call(this,m.path);v=o.getvalueof();
   if(v===undefined||v===null)throw new Error("Cannot capture "+m.key);
   a={};for(j=0;j<m.attrs.length;j++)a[m.attrs[j]]=o.getattr(m.attrs[j]);
   d.ui[m.key]={value:clone(v),attrs:a};
  }
  d.curves=captureCurves.call(this,d);
  collecting=d;collectingKeys={};afterCapture=callback;pending=EC_MANIFEST.colls.length;collectingLoop=true;
  timeoutTask.schedule(2000);
  for(i=0;i<EC_MANIFEST.colls.length;i++){
   m=EC_MANIFEST.colls[i];captureStage="store "+m.key;d.colls[m.key]=[];collectingKeys[m.key]={done:false,key:null};
   objectAt.call(this,m.path).message("dump");
  }
  collectingLoop=false;if(pending===0)finishCapture.call(this);
 }catch(e){abortCapture();if(morphPending){morphPending=null;morphCueCancel.call(this);}fail("capture "+captureStage+": "+String(e.message||e));}
}
function _collkey(k){if(!collecting||!collectingKeys[k])return;var a=atoms(arguments);a.shift();collectingKeys[k].key=a.length===1?a[0]:a;}
function _colldata(k){
 if(!collecting||!collectingKeys[k])return;var a=atoms(arguments);a.shift();
 collecting.colls[k].push({key:clone(collectingKeys[k].key),values:a});
}
function _colldone(k){if(!collecting||!collectingKeys[k]||collectingKeys[k].done)return;collectingKeys[k].done=true;pending--;if(!collectingLoop&&pending===0)finishCapture.call(this);}
function abortCapture(){timeoutTask.cancel();collecting=null;collectingKeys={};pending=0;collectingLoop=false;afterCapture=null;}
function captureTimeout(){abortCapture();morphPending=null;morphSettleTask.cancel();morphCueCancel.call(this);fail("User-store capture timed out; no incomplete preset emitted");}
function finishCapture(){
 timeoutTask.cancel();var d=collecting,cb=afterCapture;collecting=null;collectingKeys={};afterCapture=null;
 try{validate.call(this,d);captured=clone(d);status("swept",EC_MANIFEST.ui.length,"controls",EC_MANIFEST.engines.length,"engines",EC_MANIFEST.colls.length,"stores");if(cb)cb.call(this,d);}catch(e){morphPending=null;morphCueCancel.call(this);fail("capture finish: "+String(e.message||e));}
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
function isDistributionUI(m){return m.key==="ec_opt_distribution";}
isDistributionUI.local=1;isDelayUI.local=1;
function validate(d){
 plain(d,0);exactKeys(d,d.version===2?["format","version","gain","ui","engines","colls","curves"]:["format","version","gain","ui","engines","colls"]);
 if(d.format!=="ec_cnmat_sinusoids_full_v23"||(d.version!==1&&d.version!==2)||typeof d.gain!=="number"||d.gain<0||d.gain>1)throw new Error("Incompatible preset");
 var i,m,x,k,keys=[];
 for(i=0;i<EC_MANIFEST.ui.length;i++)keys.push(EC_MANIFEST.ui[i].key);exactKeys(d.ui,keys);
 for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];x=d.ui[m.key];exactKeys(x,["value","attrs"]);exactKeys(x.attrs,m.attrs);
  if(!arr(x.value)&&typeof x.value!=="number"&&typeof x.value!=="string")throw new Error("Invalid UI value "+m.key);
  if(isDistributionUI(m)){
   var v=arr(x.value)?x.value[0]:x.value,max=3;
   if((arr(x.value)&&x.value.length!==1)||typeof v!=="number"||v!==Math.floor(v)||v<0||v>max)throw new Error("Invalid sequence setting "+m.key);
  }
  if(m.type==="live.gain~"||m.key.indexOf("ec_am_ui_")===0){
   var fullValue=arr(x.value)?x.value[0]:x.value;
   if((arr(x.value)&&x.value.length!==1)||typeof fullValue!=="number"||!isFinite(fullValue))throw new Error("Invalid full-synth control "+m.key);
   if(m.type==="live.gain~"&&(fullValue< -70||fullValue>6))throw new Error("Invalid DAC gain "+m.key);
   if(m.key==="ec_am_ui_mode"&&(fullValue!==Math.floor(fullValue)||fullValue<0||fullValue>2))throw new Error("Invalid automixer mode");
   if((m.key==="ec_am_ui_min"||m.key==="ec_am_ui_max")&&fullValue<1)throw new Error("Invalid automixer ramp");
   if(m.key==="ec_am_ui_wait"&&fullValue<0)throw new Error("Invalid automixer wait");
   if(m.key==="ec_am_ui_grain"&&(fullValue!==Math.floor(fullValue)||fullValue<1||fullValue>1000))throw new Error("Invalid automixer grain");
   if(m.key==="ec_am_ui_peak"&&fullValue!==0&&fullValue!==1)throw new Error("Invalid automixer peak");
  }
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
 if(d.version===2)validateCurves(d);
 return true;
}
function preset(version,sum){
 try{
  var d=readPreset.call(this,atoms(arguments));
  if(typeof inlet!=="undefined"&&inlet>0){morphStore.call(this,inlet===1?"B":"A",d);return;}
  if(restoreBusy||collecting){fail("Preset operation already in progress");return;}
  if(morphRun||morphCue||morphPending)morphstop.call(this);
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
  if(m.key==="ec_am_ui_mode"||m.key==="ec_am_ui_min"||m.key==="ec_am_ui_max")continue;
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
 // Resynchronize every count consumer after all authoritative engine imports.
 // No shape reapplication: retain all three full 256-slot memories.
 applyCount.call(this,d.engines.ec_syn_interpolation_js.componentCount,true);
 // Restore both range endpoints in one message, then the mode LAST.
 // This avoids starting an old random cycle or sorting a half-restored range.
 function scalar(key){var v=d.ui[key].value;return arr(v)?Number(v[0]):Number(v);}
 bus("Automixer",["range",scalar("ec_am_ui_min"),scalar("ec_am_ui_max")]);
 bus("Automixer",["mode",scalar("ec_am_ui_mode")]);
 // Loop settings are restored, but ADSR playback awaits an explicit trigger.
 gain.call(this,d.gain);
}
function performPendingRecall(){
 try{applyState.call(this,recallData);captured=clone(recallData);morphCurrentSlot="";morphDisplayState.call(this);status("recalled","trigger to start envelopes");}
 catch(e){try{applyState.call(this,rollbackData);status("rollback","previous settings restored");}catch(r){fail(r);}fail(e);}
 recallData=null;rollbackData=null;unmuteTask.schedule(20);
}
function unmute(){restoreBusy=false;bus("ec-gain-value",[gainValue]);}
function notifydeleted(){timeoutTask.cancel();muteTask.cancel();unmuteTask.cancel();morphTickTask.cancel();morphSettleTask.cancel();morphCueTask.cancel();morphCue=null;}
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

/* v23 full-state morph. Small frame messages; large states cross Dict only at setup.
   Numeric settings interpolate. Discrete selectors and dormant stores commit at end.
   Source/target engine clocks are not audio-phase snapshots. No recall/stop per frame. */
var MORPH_BANK_LETTERS="ABCDEFGHIJKLMNOPQRSTUVWX";
var morphSlots=morphEmptySlots(),morphRevisions=morphEmptyRevisions();
var morphSeconds=10,morphRun=null,morphFault=null;
var morphCurrentSlot=""; // Last successfully reached named destination, not a sound match.
var morphSlotSeconds=morphEmptySlots(),morphColorVariant=1;
var morphCue=null,morphCueTask=new Task(morphCueNext,this);
var morphBankIOBusy=false;
var morphTickTask=new Task(morphTick,this),morphSettleTask=new Task(morphSettled,this),morphPending=null;
var curveRead=null,morphWriting=false;
var morphKinds=["random","shapes","detune_shapes","stops","add_remove","retuning","model","envelope_memory","partial_memory","transform","groups","auto_level"];
function morphNow(){return new Date().getTime();}
function scalarOf(v){return Number(arr(v)?v[0]:v);}
function morphLerp(a,b,t){return a+(b-a)*t;}
function morphGeometric(a,b,t){return a>0&&b>0?Math.exp(morphLerp(Math.log(a),Math.log(b),t)):morphLerp(a,b,t);}
function morphEngine(kind){for(var i=0;i<EC_MANIFEST.engines.length;i++)if(EC_MANIFEST.engines[i].kind===kind)return EC_MANIFEST.engines[i];throw new Error("Missing engine "+kind);}
function morphCall(kind,selector){var a=atoms(arguments);a.splice(0,2);sendObject(objectAt.call(this,morphEngine(kind).path),[selector].concat(a));}
function morphDuration(s){var n=s===undefined?morphSeconds:Number(s);if(!isFinite(n)||n<0||n>3600)throw new Error("Morph duration must be 0..3600 seconds");return n;}
function morphSlotName(s){s=String(s).toUpperCase();if(!/^[A-X]$/.test(s))throw new Error("Slot must be one letter A-X (24 slots)");return s;}
function morphseconds(s){try{morphSeconds=morphDuration(s);bus("Synth_Morph_seconds_state",[morphSeconds]);status("morph-seconds",morphSeconds);}catch(e){fail(e);}}
function morphcapture(slot,seconds){
 try{
  if(morphBankIOBusy)throw new Error("MorphBank file operation in progress");
  slot=morphSlotName(slot);var revision=morphRevisions[slot],savedSeconds=morphDuration(seconds);
  if(morphRun&&morphRun.running)morphApply.call(this,morphFraction());
  capture.call(this,function(d){
   if(revision!==morphRevisions[slot]){status("morph-capture-cancelled",slot,"slot changed during capture");return;}
   morphStore.call(this,slot,d,savedSeconds);
  });
 }catch(e){fail(e);}
}
function morphStore(slot,d,seconds){
 slot=morphSlotName(slot);seconds=morphDuration(seconds);
 morphSlots[slot]=clone(d);morphSlotSeconds[slot]=seconds;morphRevisions[slot]++;
 morphPublishSlot.call(this,slot);morphBankStatus.call(this);status("morph-stored",slot);
}
function morphslot(slot){try{if(morphBankIOBusy)throw new Error("MorphBank file operation in progress");slot=morphSlotName(slot);var a=atoms(arguments);a.shift();if(a[0]==="preset")a.shift();var d=readPreset.call(this,a);morphStore.call(this,slot,d,morphSlotSeconds[slot]===null?undefined:morphSlotSeconds[slot]);}catch(e){fail(e);}}
function morphdump(slot){try{slot=morphSlotName(slot);if(!morphSlots[slot])throw new Error("Capture or load slot "+slot+" first");emitPreset(morphSlots[slot]);}catch(e){fail(e);}}
function morphSlotDuration(slot){return morphSlotSeconds[slot]===null?morphSeconds:morphSlotSeconds[slot];}
// Passive SET readbacks: the left is the last completed named destination;
// the right is the running/pending destination, or the next queued cue letter.
function morphDisplayState(){
 var current=["set","current","morph","="];
 if(morphCurrentSlot)current.push(morphCurrentSlot);
 var target=morphPending?morphPending.slot:(morphRun?morphRun.slot:(morphCue?morphCue.letters[morphCue.index]:""));
 bus("Synth_Morph_current_state",current);
 bus("Synth_Morph_destination_state",target?["set","target","=",target]:["set"]);
}
function morphShowTarget(slot,seconds){
 morphSeconds=seconds;bus("Synth_Morph_seconds_state",[seconds]);
 bus("Synth_Morph_target_state",[slot,seconds,"seconds"]);
}
function morphto(slot,seconds){
 try{
  slot=morphSlotName(slot);if(!morphSlots[slot])throw new Error("Capture or load slot "+slot+" first");
  seconds=morphDuration(seconds===undefined?morphSlotDuration(slot):seconds);
  morphStartRequest.call(this,morphSlots[slot],seconds,false,slot);
  morphShowTarget.call(this,slot,seconds);
 }catch(e){fail(e);}
}
function morphjump(slot){
 try{
  slot=morphSlotName(slot);if(!morphSlots[slot])throw new Error("Capture or load slot "+slot+" first");
  var seconds=morphSlotDuration(slot);
  morphStartRequest.call(this,morphSlots[slot],0,false,slot);
  morphShowTarget.call(this,slot,seconds);status("morph-jump",slot);
 }catch(e){fail(e);}
}
function morphslottime(slot,seconds){
 try{
  slot=morphSlotName(slot);seconds=morphDuration(seconds);
  morphSlotSeconds[slot]=seconds;bus("Synth_MorphSlotTime_"+slot,["set",seconds]);
  status("morph-slot-seconds",slot,seconds);
 }catch(e){fail(e);}
}
// Integrate an exponential velocity ramp over the first quarter, coast for the
// middle half, then mirror the ramp to arrive with zero speed. Normalize the
// area so the exact user duration is retained; progress is symmetric about 0.5.
function morphEase(t){
 t=Math.max(0,Math.min(1,t));if(t===0||t===1)return t;
 var k=3,den=Math.exp(k)-1,area=(den-k)/(k*den),speed=1/(0.5+0.5*area);
 if(t>0.75)return 1-morphEase(1-t);
 if(t>=0.25)return speed*(0.25*area+t-0.25);
 var u=4*t;return speed*0.25*(Math.exp(k*u)-1-k*u)/(k*den);
}
function morphTimeFraction(){
 if(!morphRun)return 0;
 return Math.max(0,Math.min(1,morphRun.running?(morphNow()-morphRun.start)/Math.max(1,morphRun.ms):morphRun.elapsed));
}
function morphCueCancel(){
 morphCueTask.cancel();
 if(morphCue){morphCue=null;bus("Synth_MorphCue_state",["stopped"]);}
 morphDisplayState.call(this);
}
function morphcue(){
 var a=atoms(arguments);
 if(a.length===1&&String(a[0]).toLowerCase()==="stop"){morphstop.call(this);return;}
 if(a.length===1&&String(a[0]).toLowerCase()==="pause"){morphpause.call(this);return;}
 if(a.length===1&&String(a[0]).toLowerCase()==="resume"){morphresume.call(this);return;}
 try{
  if(!a.length||a.length>256)throw new Error("morphcue needs 1..256 letters A-X, or stop/pause/resume");
  if(collecting||restoreBusy||morphPending)throw new Error("Finish the current preset operation first");
  for(var i=0;i<a.length;i++){
   a[i]=morphSlotName(a[i]);if(!morphSlots[a[i]])throw new Error("Capture or load slot "+a[i]+" first");
   validate.call(this,morphSlots[a[i]]);
  }
  morphstop.call(this);
  morphCue={letters:a.slice(0),index:0,paused:false};morphCueNext.call(this);
 }catch(e){fail(e);}
}
function morphCueNext(){
 if(!morphCue||morphCue.paused||morphRun||morphPending)return;
 try{
  var cue=morphCue,slot=cue.letters[cue.index];
  if(!morphSlots[slot])throw new Error("Cue stopped: slot "+slot+" is empty");
  var seconds=morphDuration(morphSlotDuration(slot));
  morphShowTarget.call(this,slot,seconds);
  bus("Synth_MorphCue_state",["step",cue.index+1,"of",cue.letters.length,slot,seconds,"seconds"]);
  morphStartRequest.call(this,morphSlots[slot],seconds,true,slot);
 }catch(e){morphCueCancel.call(this);fail(e);}
}
function morphCueAdvance(seconds){
 if(!morphCue)return;
 morphCue.index=(morphCue.index+1)%morphCue.letters.length;
 morphDisplayState.call(this);
 if(!morphCue.paused)morphCueTask.schedule(seconds===0?20:0);
}
function morphcolor(value){
 try{
  value=Number(value);if(value!==0&&value!==1)throw new Error("morphcolor 0 (classic) or 1 (pastel)");
  morphColorVariant=value;bus("Synth_Morph_color_state",[value]);
 }catch(e){fail(e);}
}
function morph(seconds){try{var a=atoms(arguments);a.shift();if(a[0]==="preset")a.shift();var d=readPreset.call(this,a);morphStartRequest.call(this,d,morphDuration(seconds));}catch(e){fail(e);}}
function _morphfault(kind){var a=atoms(arguments);morphFault=a.join(" ");}
function morphFraction(){if(!morphRun)return 0;return morphRun.running?morphEase(morphTimeFraction()):morphRun.fraction;}
function morphStartRequest(d,seconds,keepCue,slot,group){
 if(restoreBusy||collecting)throw new Error("Another preset operation is in progress");
 validate.call(this,d); // Reject bad targets before touching an active transition.
 if(!keepCue)morphCueCancel.call(this);
 if(morphRun||morphPending)morphHold.call(this);
 morphPending={target:clone(d),seconds:seconds,slot:slot||"",group:group||""};
 morphDisplayState.call(this);
 var off=engineCall.call(this,morphEngine("offset"),"export");
 if(seconds!==0&&(off.fading||engineCall.call(this,morphEngine("partial_memory"),"export").lifeRunning)){status("morph-wait","finishing existing partial count/offset fade");morphSettleTask.schedule(175);}
 else morphSettled.call(this);
}
function morphSettled(){
 if(!morphPending)return;
 try{
  var p=morphPending;
  var off=engineCall.call(this,morphEngine("offset"),"export");
  if(p.seconds!==0&&(off.fading||engineCall.call(this,morphEngine("partial_memory"),"export").lifeRunning)){morphSettleTask.schedule(175);return;}
  capture.call(this,function(a){var q=morphPending;morphPending=null;if(q)morphBegin.call(this,a,q.target,q.seconds,q.slot,q.group);});
 }catch(e){morphPending=null;morphCueCancel.call(this);fail(e);}
}
function morphBegin(a,b,seconds,slot,group){
 var staged=[],i,m;
 try{
  // Normalize the native function representation through each function object's
  // dump outlet, never by guessing Max's serialized getvalueof list layout.
  a=withCurves.call(this,a);b=withCurves.call(this,b);
  var curves=morphCurvePlans(a,b),off=morphEngine("offset"),targetBank=b.engines[off.key].fading?b.engines[off.key].toBank:b.engines[off.key].activeBank;
  for(i=0;i<EC_MANIFEST.engines.length;i++){
   m=EC_MANIFEST.engines[i];if(morphKinds.indexOf(m.kind)<0)continue;
   engineCall.call(this,m,"morph_prepare",{from:a.engines[m.key],to:b.engines[m.key],extra:{targetBank:targetBank}});staged.push(m);
  }
  morphRun={a:clone(a),b:clone(b),slot:slot||"",engines:staged,curves:curves,ms:seconds*1000,start:morphNow(),fraction:0,elapsed:0,running:!group&&!(morphCue&&morphCue.paused),group:group||"",lastUI:{}};morphFault=null;
  morphCall.call(this,"model","ecmorphhold",1);morphCall.call(this,"transform","ecmorphhold",1);
  var pm=morphEngine("partial_memory"),n=Math.max(a.engines[pm.key].componentCount,b.engines[pm.key].componentCount);
  // Count changes happen once under the model lock, before the new frame owns all arrays.
  applyCount.call(this,n,true);
  morphCall.call(this,"offset","ecmorphmode",1,a.engines.ec_syn_js.distributionIndex,a.engines.ec_syn_js.firstPartial);
  for(i=0;i<staged.length;i++)objectAt.call(this,staged[i].path).message("ecmorphbegin");
  bus("Partial_View_Reset",["bang"]); // Temporary audition is not a stored sound parameter.
  if(morphFault)throw new Error(morphFault);
  morphApply.call(this,group?0:(seconds===0?1:0));
  if(group&&morphRun)threeSignal(group,"ready");
  if(morphRun){if(morphRun.running)morphTickTask.schedule(20);status(morphRun.running?"morph-running":"morph-paused",seconds,"seconds");}
 }catch(e){morphPending=null;morphRelease.call(this,false);morphCueCancel.call(this);fail("Morph setup: "+String(e.message||e));}
}
function morphTick(){
 if(!morphRun||!morphRun.running)return;
 try{morphApply.call(this,morphFraction());if(morphRun&&morphRun.running)morphTickTask.schedule(20);}
 catch(e){morphRelease.call(this,false);morphCueCancel.call(this);fail("Morph stopped: "+String(e.message||e));}
}
function morphpause(){
 if(morphCue){morphCue.paused=true;morphCueTask.cancel();bus("Synth_MorphCue_state",["paused"]);}
 if(!morphRun||!morphRun.running)return;
 try{var u=morphTimeFraction(),t=morphEase(u);morphApply.call(this,t);if(morphRun){morphRun.running=false;morphRun.elapsed=u;morphRun.fraction=t;morphTickTask.cancel();status("morph-paused",t);}}
 catch(e){morphRelease.call(this,false);morphCueCancel.call(this);fail(e);}
}
function morphresume(){
 if(morphRun&&morphRun.group){status("error","Use morphresume3voices for a shared transition");return;}
 if(morphCue){morphCue.paused=false;bus("Synth_MorphCue_state",["running"]);if(!morphRun&&!morphPending)morphCueTask.schedule(0);}
 if(!morphRun||morphRun.running)return;
 morphRun.start=morphNow()-morphRun.elapsed*morphRun.ms;morphRun.running=true;morphTickTask.schedule(0);status("morph-resumed");
}
function morphstop(){morphCueCancel.call(this);morphHold.call(this);}
function morphHold(){
 if(morphPending&&morphPending.group){threeSignal(morphPending.group,"interrupted");threeLink="";}
 morphPending=null;morphSettleTask.cancel();
 if(!morphRun){morphDisplayState.call(this);return;}
 try{if(morphRun.running)morphApply.call(this,morphFraction());if(morphRun){var t=morphRun.fraction;morphRelease.call(this,false);status("morph-held",t);}}
 catch(e){morphRelease.call(this,false);fail(e);}
}
function morphabort(){if(morphWriting)return;morphCueCancel.call(this);morphPending=null;morphSettleTask.cancel();if(morphRun){morphRelease.call(this,false);status("morph-aborted","current state kept");}morphDisplayState.call(this);}
function morphfinish(){if(morphRun){try{morphApply.call(this,1);}catch(e){morphRelease.call(this,false);fail(e);}}}
function morphRelease(done){
 morphTickTask.cancel();var r=morphRun;if(!r)return;morphRun=null;
 if(r.group){threeSignal(r.group,done?"done":"interrupted");if(threeLink===r.group)threeLink="";}
 if(done)morphCurrentSlot=r.slot||"";
 // release only staged engines; no old preset recall and no ADSR trigger.
 for(var i=0;i<r.engines.length;i++){try{objectAt.call(this,r.engines[i].path).message("ecmorphrelease",done?1:0);}catch(e){fail(e);}}
 try{var md=engineCall.call(this,morphEngine("model"),"export");morphCall.call(this,"offset","ecmorphmode",0,md.distributionIndex,md.firstPartial);}catch(e){fail(e);}
 try{morphCall.call(this,"model","ecmorphhold",0);morphCall.call(this,"transform","ecmorphhold",0);}catch(e){fail(e);}
 morphWriting=false;morphDisplayState.call(this);
}
function morphApply(t){
 var r=morphRun;if(!r)return;t=Math.max(0,Math.min(1,t));r.fraction=t;morphFault=null;morphWriting=true;
 morphCall.call(this,"model","ecmorphhold",1);morphCall.call(this,"transform","ecmorphhold",1);
 try{
  if(t===1){
   // Categorical changes and dormant libraries occur once, while model output is held.
   morphCommitDiscrete.call(this,r.b);
   applyCount.call(this,r.b.engines.ec_syn_interpolation_js.componentCount,true);
  }
  morphUIFrame.call(this,r,t);
  morphCall.call(this,"model","ecmorphhold",1);morphCall.call(this,"transform","ecmorphhold",1);
  // Set generator geometry before its canonical amplitudes arrive; then transform
  // and spatial crossfades, all before one final coherent model emission.
  for(var k=0;k<morphKinds.length;k++)for(var i=0;i<r.engines.length;i++)if(r.engines[i].kind===morphKinds[k])objectAt.call(this,r.engines[i].path).message("ecmorphframe",t);
  morphFunctions.call(this,r,t);
  morphCall.call(this,"model","ecmorphhold",0);
  morphCall.call(this,"transform","ecmorphhold",0);
  gain.call(this,morphLerp(r.a.gain,r.b.gain,t));
  // These temporary modes are represented honestly in intermediate dumps/UI.
  if(t<1){objectAt.call(this,["ec_anchor_mirror_v23_6"]).message("set",0);objectAt.call(this,["ec_rt14_bypass"]).message("set",0);}
  if(morphFault)throw new Error(morphFault);
  outlet(5,t);bus("Synth_Morph_progress",[t]);
 }finally{morphWriting=false;}
 if(t===1){
  var cueAtFinish=morphCue;
  morphRelease.call(this,true);status("morph-complete");bus("Synth_Morph_done",["bang"]);
  // A synchronous done receiver may stop/replace the cue or start another morph.
  if(morphCue&&morphCue===cueAtFinish&&!morphRun&&!morphPending)morphCueAdvance.call(this,r.ms/1000);
  morphDisplayState.call(this);
 }
}
function morphCategorical(m){
 if(m.type==="umenu"||m.type==="toggle"||m.type==="kslider")return true;
 return /(?:seed|memory_index|preset|registration|plan)/i.test(m.key)||m.key==="ec_obj_89";
}
function morphUIOwned(m){
 return m.type==="multislider"||m.type==="function"||m.key==="ec_syn_count_slider"||m.key==="ec_syn_count_display"||m.key==="ec_ec_gain_slider"||m.key==="ec_ec_gain_number";
}
function morphUIEmit(m){
 // Keep native duration/delay, loop, point-translation and gain caches synchronized.
 // Never repeatedly select shapes, seed randomness, rebuild routes, or toggle automation.
 if(m.type==="live.gain~")return true;
 if(m.path.length===3&&m.path[0]==="ec_obj_112")return /^(ec_duration|ec_delay_ms|ec_shape_smoothing_ms)$/.test(m.path[2]);
 if(m.path[0]==="ec_obj_21"||m.path[0]==="ec_envelope_shaper01")return /(?:duration|smoothing|time)/i.test(m.key);
 return false;
}
function morphUIFrame(r,t){
 var a=r.a,b=r.b,i,m,av,bv,x,v;
 // The master DAC fader fans out; send it first, then all individual faders.
 var ordered=EC_MANIFEST.ui.slice(0);ordered.sort(function(x,y){return x.key==="ec_obj_74"?-1:y.key==="ec_obj_74"?1:0;});
 for(i=0;i<ordered.length;i++){
  m=ordered[i];if(!m.replay||morphUIOwned(m)||morphCategorical(m))continue;
  av=a.ui[m.key];bv=b.ui[m.key];x=scalarOf(av.value);v=scalarOf(bv.value);
  if(!isFinite(x)||!isFinite(v)||(arr(av.value)&&av.value.length!==1)||(arr(bv.value)&&bv.value.length!==1))continue;
  v=morphLerp(x,v,t);if(m.type==="number"||m.type==="slider")v=Math.round(v);
  if(m.key==="ec_syn_base")v=morphGeometric(x,scalarOf(bv.value),t);
  if(r.lastUI[m.key]===v&&t!==1)continue;r.lastUI[m.key]=v;
  var value={value:arr(av.value)?[v]:v,attrs:clone(av.attrs)};
  for(var k in value.attrs)if(value.attrs.hasOwnProperty(k))value.attrs[k]=morphLerp(Number(av.attrs[k]),Number(bv.attrs[k]),t);
  writeUI.call(this,m,value,morphUIEmit(m));
 }
 // Native number-box constraints sort one endpoint at a time, so set ramp bounds atomically.
 var lo=morphLerp(scalarOf(a.ui.ec_am_ui_min.value),scalarOf(b.ui.ec_am_ui_min.value),t);
 var hi=morphLerp(scalarOf(a.ui.ec_am_ui_max.value),scalarOf(b.ui.ec_am_ui_max.value),t);
 bus("Automixer",["range",lo,hi]);
 bus("Automixer",["waittime",morphLerp(scalarOf(a.ui.ec_am_ui_wait.value),scalarOf(b.ui.ec_am_ui_wait.value),t)]);
 bus("Automixer",["grain",Math.round(morphLerp(scalarOf(a.ui.ec_am_ui_grain.value),scalarOf(b.ui.ec_am_ui_grain.value),t))]);
}
function morphCommitDiscrete(d){
 var i,m,o,j,x;
 // Synchronize Max's native pack/zl/gate cold inlets before authoritative engine
 // endpoint frames replace temporary menu-generated models. Output stays held.
 for(var phase=0;phase<3;phase++)for(i=0;i<EC_MANIFEST.ui.length;i++){
  m=EC_MANIFEST.ui[i];if(m.type==="function"||m.key==="ec_am_ui_mode"||m.key==="ec_am_ui_min"||m.key==="ec_am_ui_max")continue;
  var p=m.path.length===2&&m.path[0]==="ec_obj_112"?0:m.type==="multislider"?2:1;
  if(p===phase){
   // A native plan message would compact/reorder live oscillator slots at the
   // final frame. The group adapter already owns the complete routing state.
   var routing=m.key==="ec_obj_76"||m.path[0]==="ec_v23_render_controls";
   writeUI.call(this,m,d.ui[m.key],m.replay&&!routing);
  }
 }
 // Engines without numeric live-frame adapters are dormant generators/libraries.
 for(i=0;i<EC_MANIFEST.engines.length;i++){
  m=EC_MANIFEST.engines[i];if(morphKinds.indexOf(m.kind)<0&&m.kind!=="offset")engineCall.call(this,m,"import",d.engines[m.key]);
 }
 for(i=0;i<EC_MANIFEST.colls.length;i++){m=EC_MANIFEST.colls[i];o=objectAt.call(this,m.path);o.message("clear");for(j=0;j<d.colls[m.key].length;j++){x=d.colls[m.key][j];sendObject(o,["store",x.key].concat(x.values));}}
 bus("Automixer",["fixedpeak",scalarOf(d.ui.ec_am_ui_peak.value)]);
 bus("Automixer",["mode",scalarOf(d.ui.ec_am_ui_mode.value)]);
}
// Function.dump reports real x/y breakpoints through a third-outlet proxy. These
// replies are private capture callbacks, not synthesis or envelope triggers.
function _curvepoint(key){if(!curveRead||curveRead.key!==String(key))return;var a=atoms(arguments);a.shift();if(a.length>=2&&isFinite(Number(a[0]))&&isFinite(Number(a[1])))curveRead.points.push([Number(a[0]),Number(a[1]),a.length>2?Number(a[2]):0]);}
function nativeCurve(m,state){
 var o=objectAt.call(this,m.path),old=null,domain=o.getattr("domain"),mode=Number(o.getattr("mode")||0);
 try{
  if(state){old={value:clone(o.getvalueof()),attrs:{domain:domain}};writeUI.call(this,m,state,false);domain=state.attrs.domain;}
  curveRead={key:m.key,points:[]};o.message("dump");
  var pts=curveRead.points;curveRead=null;
  if(!pts.length)throw new Error("No function dump reply for "+m.key+"; install the matching v23 patchers");
  pts.sort(function(a,b){return a[0]-b[0];});return {domain:Number(domain),mode:mode,points:pts};
 }finally{curveRead=null;if(old)writeUI.call(this,m,old,false);}
}
function captureCurves(d){var out={};for(var i=0;i<EC_MANIFEST.ui.length;i++){var m=EC_MANIFEST.ui[i];if(m.type==="function")out[m.key]=nativeCurve.call(this,m,null);}return out;}
function withCurves(d){if(d.curves)return d;d=clone(d);d.curves={};for(var i=0;i<EC_MANIFEST.ui.length;i++){var m=EC_MANIFEST.ui[i];if(m.type==="function")d.curves[m.key]=nativeCurve.call(this,m,d.ui[m.key]);}d.version=2;return d;}
function validateCurves(d){
 if(!d.curves)throw new Error("Missing curve metadata");var keys=[];
 for(var i=0;i<EC_MANIFEST.ui.length;i++)if(EC_MANIFEST.ui[i].type==="function")keys.push(EC_MANIFEST.ui[i].key);
 exactKeys(d.curves,keys);
 for(i=0;i<keys.length;i++){var c=d.curves[keys[i]];exactKeys(c,["domain","mode","points"]);if(!(c.domain>0)||c.domain>3600000||(c.mode!==0&&c.mode!==1)||!arr(c.points)||!c.points.length||c.points.length>4096)throw new Error("Invalid function metadata "+keys[i]);for(var j=0;j<c.points.length;j++){var p=c.points[j];if(!arr(p)||p.length!==3||p.some(function(x){return typeof x!=="number"||!isFinite(x);})||p[0]<0||p[0]>c.domain+0.0001)throw new Error("Invalid function breakpoint");}}
}
function curveAt(c,u){var p=c.points,x=u*c.domain;if(x<=p[0][0])return p[0][1];for(var i=1;i<p.length;i++)if(x<=p[i][0])return morphLerp(p[i-1][1],p[i][1],(x-p[i-1][0])/Math.max(1e-12,p[i][0]-p[i-1][0]));return p[p.length-1][1];}
function morphCurvePlans(a,b){
 var out=[];for(var i=0;i<EC_MANIFEST.ui.length;i++){var m=EC_MANIFEST.ui[i];if(m.type!=="function")continue;var ca=a.curves[m.key],cb=b.curves[m.key];if(ca.mode!==0||cb.mode!==0)throw new Error("Full-state morph currently requires linear-mode function curves: "+m.key);var xs=[0,1],j;for(j=0;j<ca.points.length;j++)xs.push(ca.points[j][0]/ca.domain);for(j=0;j<cb.points.length;j++)xs.push(cb.points[j][0]/cb.domain);xs.sort(function(x,y){return x-y;});var unique=[],last=-1;for(j=0;j<xs.length;j++)if(xs[j]-last>1e-9){unique.push(xs[j]);last=xs[j];}out.push({m:m,a:ca,b:cb,x:unique});}return out;
}
function morphFunctions(r,t){
 for(var i=0;i<r.curves.length;i++){
  var p=r.curves[i],o=objectAt.call(this,p.m.path);
  if(t===0||t===1){writeUI.call(this,p.m,(t===1?r.b:r.a).ui[p.m.key],true);continue;}
  var domain=morphLerp(p.a.domain,p.b.domain,t);o.setattr("domain",domain);o.message("clear");
  for(var j=0;j<p.x.length;j++)o.message("list",p.x[j]*domain,morphLerp(curveAt(p.a,p.x[j]),curveAt(p.b,p.x[j]),t));
  o.message("bang"); // Existing graph writes the cached line message via SET, not a trigger.
 }
}
function readPreset(args){
 var a=args.slice(0),version=Number(a.shift()),sum=String(a.shift()),s="";
 if((version!==1&&version!==2)||!a.length||a.length>32768)throw new Error("Incompatible preset header");
 for(var i=0;i<a.length;i++){var token=String(a[i]);if(token.charAt(0)!=="p"||token.length>513)throw new Error("Invalid preset chunk");s+=token.substr(1);}
 s=decode(s);if(checksum(s)!==sum)throw new Error("Preset checksum mismatch");var d=JSON.parse(s);
 if(!d||d.version!==version)throw new Error("Preset header/version mismatch");
 d=migratePreset(d);validate.call(this,d);return d;
}
function migratePreset(d){
 d=clone(d);if(d.format!=="ec_cnmat_sinusoids_full_v21"&&d.format!=="ec_cnmat_sinusoids_full_v23")throw new Error("Not a compatible full-synth dump");
 if(d.format==="ec_cnmat_sinusoids_full_v21"){
  // Rename schema PATH KEYS only. Never rewrite user store strings or preset content.
  var tables=["ui","engines","colls","curves"];
  for(var q=0;q<tables.length;q++)if(d[tables[q]]){var old=d[tables[q]],n={};for(var k in old)if(old.hasOwnProperty(k))n[k.replace(/v21/g,"v23")]=old[k];d[tables[q]]=n;}
  d.format="ec_cnmat_sinusoids_full_v23";
 }
 var model=d.engines&&d.engines.ec_syn_js;
 if(model){if(model.distributionIndex===undefined)model.distributionIndex=scalarOf(d.ui.ec_opt_distribution.value);var extra=["partialMultipliersOverride","fundamentalWeightsOverride","frozenMicroOffsets"];for(var i=0;i<extra.length;i++)if(model[extra[i]]===undefined)model[extra[i]]=null;}
 var gm=morphEngine("groups");var g=d.engines&&d.engines[gm.key];if(g){if(g.morphLaneWeights===undefined)g.morphLaneWeights=null;if(g.morphMatrix===undefined)g.morphMatrix=null;}
 return d;
}
function emitPresetTo(d,port){var s=JSON.stringify(d).replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);}),coded=encode(s),out=["set","preset",d.version,checksum(s)];for(var i=0;i<coded.length;i+=512)out.push("p"+coded.substr(i,512));outlet(port,out);}
// Large target dumps can be clicked into inlet 2 (B) or inlet 3 (A) without recall.
// Only the original first inlet retains ordinary preset recall behavior.
[morphNow,scalarOf,morphLerp,morphGeometric,morphEngine,morphCall,morphDuration,morphSlotName,morphStore,morphFraction,morphStartRequest,morphSettled,morphBegin,morphTick,morphRelease,morphApply,morphCategorical,morphUIOwned,morphUIEmit,morphUIFrame,morphCommitDiscrete,nativeCurve,captureCurves,withCurves,validateCurves,curveAt,morphCurvePlans,morphFunctions,readPreset,migratePreset,emitPresetTo].forEach(function(f){f.local=1;});


/* ==================== MorphBank A-X / command integration ====================
   Workflow data is NOT part of a sound preset. No nested banks, recursive dumps,
   eval, or JS file loading. Each destination is independently cloned.
   Existing transition/frame/curve/audio-adapter code above is unchanged.
*/
function morphEmptySlots(){var o={};for(var i=0;i<MORPH_BANK_LETTERS.length;i++)o[MORPH_BANK_LETTERS.charAt(i)]=null;return o;}
function morphEmptyRevisions(){var o={};for(var i=0;i<MORPH_BANK_LETTERS.length;i++)o[MORPH_BANK_LETTERS.charAt(i)]=0;return o;}
function morphAscii(s){return s.replace(/[\u007f-\uffff]/g,function(c){return "\\u"+("0000"+c.charCodeAt(0).toString(16)).slice(-4);});}
function morphPresetMessage(d){
 var s=morphAscii(JSON.stringify(d)),coded=encode(s),out=["preset",d.version,checksum(s)];
 for(var i=0;i<coded.length;i+=512)out.push("p"+coded.substr(i,512));return out;
}
function morphPublishSlot(slot){
 var d=morphSlots[slot],a=d?["set"].concat(morphPresetMessage(d)):["set"];
 // Preserve the original A/B outlet protocol for existing external controllers.
 if(slot==="A")outlet(3,a);else if(slot==="B")outlet(4,a);
 // Each hidden dump editor receives only its own passive SET message.
 bus("Synth_MorphSlot_"+slot,a);
 bus("Synth_MorphBank_slot_state",[slot,d?1:0]);
 bus("Synth_MorphSlotTime_"+slot,["set",morphSlotDuration(slot)]);
}
function morphBankStatus(){
 var filled=[],flags=[],s;
 for(var i=0;i<MORPH_BANK_LETTERS.length;i++){s=MORPH_BANK_LETTERS.charAt(i);flags.push(morphSlots[s]?1:0);if(morphSlots[s])filled.push(s);}
 bus("Synth_MorphBank_state",[filled.length,"of",24,"slots:"].concat(filled.length?filled:["empty"]));
 bus("Synth_MorphBank_occupancy",flags);
 bus("Synth_Morph_color_state",[morphColorVariant]);
 return filled.length;
}
function morphclear(slot){
 try{
  if(morphBankIOBusy)throw new Error("MorphBank file operation in progress");
  if(String(slot).toLowerCase()==="all"){
   for(var i=0;i<MORPH_BANK_LETTERS.length;i++){var s=MORPH_BANK_LETTERS.charAt(i);morphSlots[s]=null;morphSlotSeconds[s]=null;morphRevisions[s]++;morphPublishSlot.call(this,s);}
   morphCurrentSlot="";morphDisplayState.call(this);
   morphBankStatus.call(this);status("morphbank-cleared","all");
  }else{slot=morphSlotName(slot);morphSlots[slot]=null;morphSlotSeconds[slot]=null;morphRevisions[slot]++;morphPublishSlot.call(this,slot);if(morphCurrentSlot===slot)morphCurrentSlot="";morphDisplayState.call(this);morphBankStatus.call(this);status("morphbank-cleared",slot);}
 }catch(e){fail(e);}
}
// Explicit bank-only alias. This NEVER sends the synth's destructive All_Off bus.
function clear(scope){if(String(scope).toLowerCase()!=="all"){fail("Use clear all for the MorphBank, or morphclear LETTER");return;}morphclear.call(this,"all");}
function morphBankPath(args){
 if(args.length!==1||typeof args[0]!=="string"||!args[0].length||/[\x00\r\n]/.test(args[0]))throw new Error('Provide one file path symbol; quote paths containing spaces');
 return args[0];
}
function morphBankDocument(){
 var slots={},s,d;
 for(var i=0;i<MORPH_BANK_LETTERS.length;i++){
  s=MORPH_BANK_LETTERS.charAt(i);d=morphSlots[s];
  if(d){validate.call(this,d);slots[s]=morphPresetMessage(d);}else slots[s]=null;
 }
 var payload={slotOrder:MORPH_BANK_LETTERS,seconds:morphSeconds,slots:slots,slotSeconds:clone(morphSlotSeconds),colorVariant:morphColorVariant};
 return {format:"ec_cnmat_sinusoids_morphbank_v23",version:2,checksum:checksum(morphAscii(JSON.stringify(payload))),payload:payload};
}
function morphBankDecode(doc){
 exactKeys(doc,["format","version","checksum","payload"]);
 if(doc.format!=="ec_cnmat_sinusoids_morphbank_v23"||(doc.version!==1&&doc.version!==2))throw new Error("Not a v23 MorphBank file");
 exactKeys(doc.payload,doc.version===1?["slotOrder","seconds","slots"]:["slotOrder","seconds","slots","slotSeconds","colorVariant"]);
 if(doc.payload.slotOrder!==MORPH_BANK_LETTERS)throw new Error("MorphBank must contain the A-X slot map");
 if(typeof doc.payload.seconds!=="number")throw new Error("Invalid MorphBank seconds");
 var seconds=morphDuration(doc.payload.seconds),keys=MORPH_BANK_LETTERS.split("");
 exactKeys(doc.payload.slots,keys);
 if(typeof doc.checksum!=="string"||doc.checksum!==checksum(morphAscii(JSON.stringify(doc.payload))))throw new Error("MorphBank checksum mismatch; bank unchanged");
 var staged=morphEmptySlots(),times=morphEmptySlots(),a,s,color=doc.version===1?1:doc.payload.colorVariant;
 if(color!==0&&color!==1)throw new Error("Invalid MorphBank color variant");
 if(doc.version===2){
  exactKeys(doc.payload.slotSeconds,keys);
  for(var ti=0;ti<keys.length;ti++){
   var time=doc.payload.slotSeconds[keys[ti]];
   if(time!==null){if(typeof time!=="number")throw new Error("Invalid slot seconds "+keys[ti]);times[keys[ti]]=morphDuration(time);}
  }
 }
 // Entire file and every full preset are validated BEFORE the first slot changes.
 for(var i=0;i<keys.length;i++){
  s=keys[i];a=doc.payload.slots[s];
  if(a===null)continue;
  if(!arr(a)||a.length<4||a.length>32771||a[0]!=="preset")throw new Error("Invalid full preset in MorphBank slot "+s);
  try{staged[s]=readPreset.call(this,a.slice(1));if(times[s]===null)times[s]=seconds;}catch(e){throw new Error("Slot "+s+": "+String(e.message||e));}
 }
 return {slots:staged,seconds:seconds,slotSeconds:times,colorVariant:color};
}
var MORPH_BANK_MAX_BYTES=268435456; // 256 MiB guard; ordinary full banks are much smaller.
function morphReadText(path){
 var f=null,parts=[],n,chunk,before;
 try{
  f=new File(path,"read");if(!f.isopen)throw new Error("Cannot open MorphBank: "+path);
  n=Number(f.eof);if(!isFinite(n)||n<1||n>MORPH_BANK_MAX_BYTES)throw new Error("Empty or oversized MorphBank file (limit 256 MiB)");
  f.position=0;
  while(f.position<n){
   before=f.position;chunk=f.readstring(Math.min(16384,n-before));
   if(typeof chunk!=="string"||!chunk.length||f.position<=before)throw new Error("Incomplete MorphBank file read");
   parts.push(chunk);
  }
  return parts.join("");
 }finally{if(f&&f.isopen)f.close();}
}
function morphWriteText(path,text){
 var f=null;
 if(!text.length||text.length>MORPH_BANK_MAX_BYTES)throw new Error("MorphBank exceeds 256 MiB file limit");
 try{
  f=new File(path,"write");if(!f.isopen)throw new Error("Cannot write MorphBank: "+path);
  f.position=0;f.eof=0;
  for(var i=0;i<text.length;i+=16384){
   var end=Math.min(text.length,i+16384);f.writestring(text.substring(i,end));
   if(Number(f.position)!==end)throw new Error("Incomplete MorphBank write; choose another path and save again");
  }
  f.eof=f.position;
 }finally{if(f&&f.isopen)f.close();}
 // Read back exact ASCII contents before reporting success. File overwrite is
 // not OS-atomic; keep a separate bank backup for important performance data.
 if(morphReadText(path)!==text)throw new Error("MorphBank file verification failed");
}
function morphbank(action){
 var a=atoms(arguments),ownsLock=false;action=String(a.shift()||"status").toLowerCase();
 try{
  if(action==="clear"){if(a.length>1)throw new Error("morphbank clear [all|LETTER]");morphclear.call(this,a.length?a[0]:"all");return;}
  if(action==="status"){var n=morphBankStatus.call(this);status("morphbank-status",n,"of",24,"seconds",morphSeconds);return;}
  if(action==="save")action="write";if(action==="load")action="read";
  if(action!=="read"&&action!=="write")throw new Error("MorphBank: write/save, read/load, clear, or status");
  if(morphBankIOBusy||collecting||restoreBusy)throw new Error("Finish the current preset/bank operation first");
  if(!a.length){bus("Synth_MorphBank_Dialog",[action]);return;}
  var path=morphBankPath(a);morphBankIOBusy=true;ownsLock=true;
  if(action==="write"){
   // Serialize and validate every populated slot before opening the output file.
   var text=morphAscii(JSON.stringify(morphBankDocument.call(this),null,2))+"\n";
   morphWriteText(path,text);status("morphbank-saved",path,morphBankStatus.call(this),"slots");
  }else{
   var parsed=JSON.parse(morphReadText(path)),staged=morphBankDecode.call(this,parsed);
   morphSlots=staged.slots;morphSeconds=staged.seconds;morphSlotSeconds=staged.slotSeconds;morphColorVariant=staged.colorVariant;
   for(var i=0;i<MORPH_BANK_LETTERS.length;i++){var s=MORPH_BANK_LETTERS.charAt(i);morphRevisions[s]++;morphPublishSlot.call(this,s);}
   bus("Synth_Morph_seconds_state",[morphSeconds]);status("morphbank-loaded",path,morphBankStatus.call(this),"slots");
  }
 }catch(e){fail(e);}finally{if(ownsLock)morphBankIOBusy=false;}
}
function morphCommand(name){
 switch(name){
 case "morphtoV3":return morphto;case "morphcaptureV3":return morphcapture;
 case "morphcapture":return morphcapture;case "morphslot":return morphslot;
 case "morphto":return morphto;case "morphjump":return morphjump;case "morphcue":return morphcue;
 case "morphslottime":return morphslottime;case "morphcolor":return morphcolor;case "morph":return morph;case "morphseconds":return morphseconds;
 case "morphpause":return morphpause;case "morphresume":return morphresume;
 case "morphstop":return morphstop;case "morphfinish":return morphfinish;
 case "morphabort":return morphabort;case "morphdump":return morphdump;
 case "morphbank":return morphbank;case "morphclear":return morphclear;case "clear":return clear;
 default:return null;
 }
}
function command(name){
 var a=atoms(arguments);name=String(a.shift());
 try{
  // Explicit dispatcher, not eval or arbitrary this[name] access.
  var fn=morphCommand(name);
  if(fn){fn.apply(this,a);return;}
  switch(name){
   case "control":control.apply(this,a);return;
   case "gain":gain.apply(this,a);return;case "gaindb":gaindb.apply(this,a);return;
   case "note-in":case "note":note.apply(this,a);return;
   case "trigger":trigger.call(this);return;case "stop":stop.call(this);return;
   case "sweep":sweep.call(this);return;case "dump":dump.call(this);return;
   case "dumpvalues":dumpvalues.call(this);return;case "check":check.call(this);return;
   case "preset":preset.apply(this,a);return;
  }
  if(EC_MANIFEST.controls.indexOf(name)>=0){control.apply(this,[name].concat(a));return;}
  throw new Error("Unknown command "+name);
 }catch(e){fail(e);}
}
[morphEmptySlots,morphEmptyRevisions,morphAscii,morphPresetMessage,morphPublishSlot,
 morphBankStatus,morphBankPath,morphBankDocument,morphBankDecode,morphReadText,
 morphWriteText,morphCommand].forEach(function(f){f.local=1;});

[morphSlotDuration,morphShowTarget,morphEase,morphTimeFraction,morphHold,
 morphCueCancel,morphCueNext,morphCueAdvance].forEach(function(f){f.local=1;});

morphDisplayState.local=1;

/* Public three-voice coordinator bridge. Full states use bounded Dict atoms;
   frames carry only a dictionary token and a common eased fraction. */
var threeLink="",threeCapture="";
function threeSignal(name,phase,error){
 if(!name)return;
 var d=new Dict(name);
 try{if(error)ec_wireWrite(d,"error",{message:String(error.message||error)});d.set("phase",phase);}
 finally{d.freepeer();}
}
function _threevoice(name){
 name=String(name);
 if(name.indexOf(ns+"threevoices-")!==0){fail("Foreign three-voice transfer rejected");return;}
 var d=new Dict(name);
 try{
  var q=ec_wireRead(d,"request");
  if(q.action==="validate"){
   if(!arr(q.preset)||q.preset[0]!=="preset")throw new Error("Expected a full preset message");
   readPreset.call(this,q.preset.slice(1));d.set("phase","validated");return;
  }
  if(q.action!=="capture"&&q.action!=="prepare")throw new Error("Unknown three-voice operation");
  if(collecting||restoreBusy||morphBankIOBusy)throw new Error("Voice has another preset operation in progress");
  if(q.action==="capture"){
   if(threeCapture)throw new Error("Three-voice capture already in progress");
   threeCapture=name;
   if(morphRun&&morphRun.running)morphApply.call(this,morphFraction());
   capture.call(this,function(state){
    if(threeCapture!==name)return;
    var reply=new Dict(name);
    try{ec_wireWrite(reply,"response",morphPresetMessage(state));reply.set("phase","captured");}
    finally{reply.freepeer();threeCapture="";}
   });
  }else{
   if(!arr(q.preset)||q.preset[0]!=="preset")throw new Error("Expected a full preset message");
   var target=readPreset.call(this,q.preset.slice(1)),seconds=morphDuration(q.seconds);
   // Validate first, then release an old transition before taking ownership.
   morphstop.call(this);threeLink=name;
   morphStartRequest.call(this,target,seconds,false,"3voices "+q.slot,name);
  }
 }catch(e){threeSignal(name,"error",e);status("error",String(e.message||e));}
 finally{d.freepeer();}
}
function _threevoiceframe(name,fraction){
 if(name!==threeLink||!morphRun||morphRun.group!==name){threeSignal(name,"interrupted");return;}
 try{
  fraction=Number(fraction);if(!isFinite(fraction)||fraction<0||fraction>1)throw new Error("Invalid shared morph fraction");
  morphApply.call(this,fraction);
  if(morphRun)threeSignal(name,"running");
 }catch(e){threeSignal(name,"error",e);threeLink="";morphstop.call(this);fail(e);}
}
function _threevoicecancel(name){
 if(threeCapture===name){abortCapture();threeCapture="";}
 if(threeLink===name){morphstop.call(this);threeLink="";}
}
threeSignal.local=1;
