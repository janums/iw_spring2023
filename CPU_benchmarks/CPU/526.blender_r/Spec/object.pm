$benchnum  = '526';
$benchname = 'blender_r';
$exename   = 'blender_r';
$benchlang = 'CXX,C';
$need_math = 'yes';
@base_exe  = (qw/blender_r imagevalidate_526/);


$reltol = { 'default'   => 5.0e-2 };

%workloads = (
    'refspeed' => [ 'refrate' ],
);

# Please search every single directory for include files
$bench_flags = join(' ', qw(
    -Ispecrand
    -Iblender/extern/binreloc/include
    -Iblender/extern/colamd/Include
    -Iblender/extern/glew/include
    -Iblender/extern/libmv
    -Iblender/extern/libmv/intern
    -Iblender/extern/rangetree
    -Iblender/extern/wcwidth
    -Iblender/intern
    -Iblender/intern/atomic
    -Iblender/intern/audaspace/intern
    -Iblender/intern/cycles/blender
    -Iblender/intern/elbeem/extern
    -Iblender/intern/ghost
    -Iblender/intern/ghost/intern
    -Iblender/intern/glew-mx
    -Iblender/intern/glew-mx/intern
    -Iblender/intern/guardedalloc
    -Iblender/intern/guardedalloc/intern
    -Iblender/intern/iksolver/extern
    -Iblender/intern/locale
    -Iblender/intern/memutil
    -Iblender/intern/mikktspace
    -Iblender/intern/opencolorio
    -Iblender/intern/raskter
    -Iblender/intern/smoke/extern
    -Iblender/intern/string
    -Iblender/intern/utfconv
    -Iblender/source/blender/blenfont
    -Iblender/source/blender/blenfont/intern
    -Iblender/source/blender/blenkernel
    -Iblender/source/blender/blenkernel/intern
    -Iblender/source/blender/blenlib
    -Iblender/source/blender/blenlib/intern
    -Iblender/source/blender/blenloader
    -Iblender/source/blender/blenloader/intern
    -Iblender/source/blender/bmesh
    -Iblender/source/blender/bmesh/intern
    -Iblender/source/blender/bmesh/tools
    -Iblender/source/blender/collada
    -Iblender/source/blender/compositor
    -Iblender/source/blender/editors/animation
    -Iblender/source/blender/editors/armature
    -Iblender/source/blender/editors/curve
    -Iblender/source/blender/editors/gpencil
    -Iblender/source/blender/editors/include
    -Iblender/source/blender/editors/interface
    -Iblender/source/blender/editors/io
    -Iblender/source/blender/editors/mask
    -Iblender/source/blender/editors/mesh
    -Iblender/source/blender/editors/metaball
    -Iblender/source/blender/editors/object
    -Iblender/source/blender/editors/physics
    -Iblender/source/blender/editors/render
    -Iblender/source/blender/editors/screen
    -Iblender/source/blender/editors/sculpt_paint
    -Iblender/source/blender/editors/sound
    -Iblender/source/blender/editors/space_action
    -Iblender/source/blender/editors/space_buttons
    -Iblender/source/blender/editors/space_clip
    -Iblender/source/blender/editors/space_console
    -Iblender/source/blender/editors/space_file
    -Iblender/source/blender/editors/space_graph
    -Iblender/source/blender/editors/space_image
    -Iblender/source/blender/editors/space_info
    -Iblender/source/blender/editors/space_logic
    -Iblender/source/blender/editors/space_nla
    -Iblender/source/blender/editors/space_node
    -Iblender/source/blender/editors/space_outliner
    -Iblender/source/blender/editors/space_script
    -Iblender/source/blender/editors/space_sequencer
    -Iblender/source/blender/editors/space_text
    -Iblender/source/blender/editors/space_time
    -Iblender/source/blender/editors/space_userpref
    -Iblender/source/blender/editors/space_view3d
    -Iblender/source/blender/editors/transform
    -Iblender/source/blender/editors/util
    -Iblender/source/blender/editors/uvedit
    -Iblender/source/blender/gpu
    -Iblender/source/blender/gpu/intern
    -Iblender/source/blender/ikplugin
    -Iblender/source/blender/ikplugin/intern
    -Iblender/source/blender/imbuf
    -Iblender/source/blender/imbuf/intern
    -Iblender/source/blender/imbuf/intern/openexr
    -Iblender/source/blender/makesdna
    -Iblender/source/blender/makesrna
    -Iblender/source/blender/makesrna/intern
    -Iblender/source/blender/modifiers
    -Iblender/source/blender/modifiers/intern
    -Iblender/source/blender/nodes
    -Iblender/source/blender/nodes/composite
    -Iblender/source/blender/nodes/intern
    -Iblender/source/blender/nodes/shader
    -Iblender/source/blender/nodes/texture
    -Iblender/source/blender/python
    -Iblender/source/blender/render/extern/include
    -Iblender/source/blender/render/intern/include
    -Iblender/source/blender/render/intern/raytrace
    -Iblender/source/blender/windowmanager
    -Iblender/source/gameengine/BlenderRoutines
    -Iblender_bin/source/blender/makesrna/intern
    -Iinclude
    -Ilibpng
    -Izlib
    ));

use Config;
$bench_flags .= ' -DSPEC_AUTO_SUPPRESS_OPENMP -DSPEC_AUTO_BYTEORDER=0x'.$Config{'byteorder'};

# Now the "standard" flags
$bench_flags .= ' -DGLEW_NO_ES -DGLEW_STATIC -DWITH_DNA_GHASH -DWITH_GL_PROFILE_COMPAT -DWITH_HEADLESS -DHAVE_UNSIGNED_CHAR';

if ($^O =~ /MSWin32/i && !$ENV{'SPEC_NOT_REALLY_WINDOWS'}) {
    $bench_flags .= ' -DWIN32';
}

%sources = (
    'blender_r' => [ qw(
        blender/source/creator/creator.c
        blender/source/blender/windowmanager/intern/wm.c
        blender/source/blender/windowmanager/intern/wm_playanim.c
        blender/source/blender/windowmanager/intern/wm_cursors.c
        blender/source/blender/windowmanager/intern/wm_dragdrop.c
        blender/source/blender/windowmanager/intern/wm_draw.c
        blender/source/blender/windowmanager/intern/wm_event_system.c
        blender/source/blender/windowmanager/intern/wm_files.c
        blender/source/blender/windowmanager/intern/wm_gesture.c
        blender/source/blender/windowmanager/intern/wm_init_exit.c
        blender/source/blender/windowmanager/intern/wm_jobs.c
        blender/source/blender/windowmanager/intern/wm_keymap.c
        blender/source/blender/windowmanager/intern/wm_operators.c
        blender/source/blender/windowmanager/intern/wm_subwindow.c
        blender/source/blender/windowmanager/intern/wm_window.c
        blender/source/blender/editors/space_api/spacetypes.c
        blender/source/blender/editors/space_action/action_draw.c
        blender/source/blender/editors/space_action/action_edit.c
        blender/source/blender/editors/space_action/action_ops.c
        blender/source/blender/editors/space_action/action_select.c
        blender/source/blender/editors/space_action/space_action.c
        blender/source/blender/editors/space_buttons/buttons_context.c
        blender/source/blender/editors/space_buttons/buttons_ops.c
        blender/source/blender/editors/space_buttons/buttons_texture.c
        blender/source/blender/editors/space_buttons/space_buttons.c
        blender/source/blender/editors/space_console/console_draw.c
        blender/source/blender/editors/space_console/console_ops.c
        blender/source/blender/editors/space_console/space_console.c
        blender/source/blender/editors/space_file/file_draw.c
        blender/source/blender/editors/space_file/file_ops.c
        blender/source/blender/editors/space_file/file_panels.c
        blender/source/blender/editors/space_file/filelist.c
        blender/source/blender/editors/space_file/filesel.c
        blender/source/blender/editors/space_file/fsmenu.c
        blender/source/blender/editors/space_file/space_file.c
        blender/source/blender/editors/space_graph/graph_buttons.c
        blender/source/blender/editors/space_graph/graph_draw.c
        blender/source/blender/editors/space_graph/graph_edit.c
        blender/source/blender/editors/space_graph/graph_ops.c
        blender/source/blender/editors/space_graph/graph_select.c
        blender/source/blender/editors/space_graph/graph_utils.c
        blender/source/blender/editors/space_graph/space_graph.c
        blender/source/blender/editors/space_image/image_buttons.c
        blender/source/blender/editors/space_image/image_draw.c
        blender/source/blender/editors/space_image/image_edit.c
        blender/source/blender/editors/space_image/image_ops.c
        blender/source/blender/editors/space_image/space_image.c
        blender/source/blender/editors/space_info/info_ops.c
        blender/source/blender/editors/space_info/info_stats.c
        blender/source/blender/editors/space_info/info_draw.c
        blender/source/blender/editors/space_info/info_report.c
        blender/source/blender/editors/space_info/textview.c
        blender/source/blender/editors/space_info/space_info.c
        blender/source/blender/editors/space_logic/logic_buttons.c
        blender/source/blender/editors/space_logic/logic_ops.c
        blender/source/blender/editors/space_logic/logic_window.c
        blender/source/blender/editors/space_logic/space_logic.c
        blender/source/blender/editors/space_nla/nla_buttons.c
        blender/source/blender/editors/space_nla/nla_channels.c
        blender/source/blender/editors/space_nla/nla_draw.c
        blender/source/blender/editors/space_nla/nla_edit.c
        blender/source/blender/editors/space_nla/nla_ops.c
        blender/source/blender/editors/space_nla/nla_select.c
        blender/source/blender/editors/space_nla/space_nla.c
        blender/source/blender/editors/space_node/drawnode.c
        blender/source/blender/editors/space_node/node_add.c
        blender/source/blender/editors/space_node/node_buttons.c
        blender/source/blender/editors/space_node/node_draw.c
        blender/source/blender/editors/space_node/node_edit.c
        blender/source/blender/editors/space_node/node_group.c
        blender/source/blender/editors/space_node/node_ops.c
        blender/source/blender/editors/space_node/node_relationships.c
        blender/source/blender/editors/space_node/node_select.c
        blender/source/blender/editors/space_node/node_templates.c
        blender/source/blender/editors/space_node/node_toolbar.c
        blender/source/blender/editors/space_node/node_view.c
        blender/source/blender/editors/space_node/space_node.c
        blender/source/blender/editors/space_outliner/outliner_draw.c
        blender/source/blender/editors/space_outliner/outliner_edit.c
        blender/source/blender/editors/space_outliner/outliner_ops.c
        blender/source/blender/editors/space_outliner/outliner_select.c
        blender/source/blender/editors/space_outliner/outliner_tools.c
        blender/source/blender/editors/space_outliner/outliner_tree.c
        blender/source/blender/editors/space_outliner/space_outliner.c
        blender/source/blender/editors/space_script/script_edit.c
        blender/source/blender/editors/space_script/script_ops.c
        blender/source/blender/editors/space_script/space_script.c
        blender/source/blender/editors/space_sequencer/sequencer_add.c
        blender/source/blender/editors/space_sequencer/sequencer_buttons.c
        blender/source/blender/editors/space_sequencer/sequencer_draw.c
        blender/source/blender/editors/space_sequencer/sequencer_edit.c
        blender/source/blender/editors/space_sequencer/sequencer_modifier.c
        blender/source/blender/editors/space_sequencer/sequencer_ops.c
        blender/source/blender/editors/space_sequencer/sequencer_scopes.c
        blender/source/blender/editors/space_sequencer/sequencer_select.c
        blender/source/blender/editors/space_sequencer/sequencer_view.c
        blender/source/blender/editors/space_sequencer/space_sequencer.c
        blender/source/blender/editors/space_text/space_text.c
        blender/source/blender/editors/space_text/text_autocomplete.c
        blender/source/blender/editors/space_text/text_draw.c
        blender/source/blender/editors/space_text/text_format.c
        blender/source/blender/editors/space_text/text_format_lua.c
        blender/source/blender/editors/space_text/text_format_osl.c
        blender/source/blender/editors/space_text/text_format_py.c
        blender/source/blender/editors/space_text/text_header.c
        blender/source/blender/editors/space_text/text_ops.c
        blender/source/blender/editors/space_time/space_time.c
        blender/source/blender/editors/space_time/time_ops.c
        blender/source/blender/editors/space_userpref/space_userpref.c
        blender/source/blender/editors/space_userpref/userpref_ops.c
        blender/source/blender/editors/space_view3d/drawanimviz.c
        blender/source/blender/editors/space_view3d/drawarmature.c
        blender/source/blender/editors/space_view3d/drawmesh.c
        blender/source/blender/editors/space_view3d/drawobject.c
        blender/source/blender/editors/space_view3d/drawvolume.c
        blender/source/blender/editors/space_view3d/space_view3d.c
        blender/source/blender/editors/space_view3d/view3d_buttons.c
        blender/source/blender/editors/space_view3d/view3d_camera_control.c
        blender/source/blender/editors/space_view3d/view3d_draw.c
        blender/source/blender/editors/space_view3d/view3d_edit.c
        blender/source/blender/editors/space_view3d/view3d_fly.c
        blender/source/blender/editors/space_view3d/view3d_walk.c
        blender/source/blender/editors/space_view3d/view3d_header.c
        blender/source/blender/editors/space_view3d/view3d_iterators.c
        blender/source/blender/editors/space_view3d/view3d_ops.c
        blender/source/blender/editors/space_view3d/view3d_project.c
        blender/source/blender/editors/space_view3d/view3d_ruler.c
        blender/source/blender/editors/space_view3d/view3d_select.c
        blender/source/blender/editors/space_view3d/view3d_snap.c
        blender/source/blender/editors/space_view3d/view3d_toolbar.c
        blender/source/blender/editors/space_view3d/view3d_view.c
        blender/source/blender/editors/space_clip/clip_buttons.c
        blender/source/blender/editors/space_clip/clip_dopesheet_draw.c
        blender/source/blender/editors/space_clip/clip_dopesheet_ops.c
        blender/source/blender/editors/space_clip/clip_draw.c
        blender/source/blender/editors/space_clip/clip_editor.c
        blender/source/blender/editors/space_clip/clip_graph_draw.c
        blender/source/blender/editors/space_clip/clip_graph_ops.c
        blender/source/blender/editors/space_clip/clip_ops.c
        blender/source/blender/editors/space_clip/clip_toolbar.c
        blender/source/blender/editors/space_clip/clip_utils.c
        blender/source/blender/editors/space_clip/space_clip.c
        blender/source/blender/editors/space_clip/tracking_ops.c
        blender/source/blender/editors/space_clip/tracking_select.c
        blender/source/blender/editors/transform/transform.c
        blender/source/blender/editors/transform/transform_constraints.c
        blender/source/blender/editors/transform/transform_conversions.c
        blender/source/blender/editors/transform/transform_generics.c
        blender/source/blender/editors/transform/transform_input.c
        blender/source/blender/editors/transform/transform_manipulator.c
        blender/source/blender/editors/transform/transform_ops.c
        blender/source/blender/editors/transform/transform_orientations.c
        blender/source/blender/editors/transform/transform_snap.c
        blender/source/blender/editors/util/ed_transverts.c
        blender/source/blender/editors/util/ed_util.c
        blender/source/blender/editors/util/editmode_undo.c
        blender/source/blender/editors/util/numinput.c
        blender/source/blender/editors/util/undo.c
        blender/source/blender/editors/uvedit/uvedit_buttons.c
        blender/source/blender/editors/uvedit/uvedit_draw.c
        blender/source/blender/editors/uvedit/uvedit_ops.c
        blender/source/blender/editors/uvedit/uvedit_parametrizer.c
        blender/source/blender/editors/uvedit/uvedit_smart_stitch.c
        blender/source/blender/editors/uvedit/uvedit_unwrap_ops.c
        blender/source/blender/editors/curve/curve_ops.c
        blender/source/blender/editors/curve/editcurve.c
        blender/source/blender/editors/curve/editcurve_add.c
        blender/source/blender/editors/curve/editfont.c
        blender/source/blender/editors/curve/lorem.c
        blender/source/blender/editors/gpencil/drawgpencil.c
        blender/source/blender/editors/gpencil/editaction_gpencil.c
        blender/source/blender/editors/gpencil/gpencil_buttons.c
        blender/source/blender/editors/gpencil/gpencil_edit.c
        blender/source/blender/editors/gpencil/gpencil_ops.c
        blender/source/blender/editors/gpencil/gpencil_paint.c
        blender/source/blender/editors/gpencil/gpencil_undo.c
        blender/source/blender/editors/interface/interface.c
        blender/source/blender/editors/interface/interface_anim.c
        blender/source/blender/editors/interface/interface_draw.c
        blender/source/blender/editors/interface/interface_eyedropper.c
        blender/source/blender/editors/interface/interface_handlers.c
        blender/source/blender/editors/interface/interface_icons.c
        blender/source/blender/editors/interface/interface_layout.c
        blender/source/blender/editors/interface/interface_ops.c
        blender/source/blender/editors/interface/interface_panel.c
        blender/source/blender/editors/interface/interface_regions.c
        blender/source/blender/editors/interface/interface_style.c
        blender/source/blender/editors/interface/interface_templates.c
        blender/source/blender/editors/interface/interface_utils.c
        blender/source/blender/editors/interface/interface_widgets.c
        blender/source/blender/editors/interface/resources.c
        blender/source/blender/editors/interface/view2d.c
        blender/source/blender/editors/interface/view2d_ops.c
        blender/source/blender/editors/mesh/editface.c
        blender/source/blender/editors/mesh/editmesh_add.c
        blender/source/blender/editors/mesh/editmesh_bevel.c
        blender/source/blender/editors/mesh/editmesh_bisect.c
        blender/source/blender/editors/mesh/editmesh_extrude.c
        blender/source/blender/editors/mesh/editmesh_inset.c
        blender/source/blender/editors/mesh/editmesh_intersect.c
        blender/source/blender/editors/mesh/editmesh_knife.c
        blender/source/blender/editors/mesh/editmesh_knife_project.c
        blender/source/blender/editors/mesh/editmesh_loopcut.c
        blender/source/blender/editors/mesh/editmesh_path.c
        blender/source/blender/editors/mesh/editmesh_rip.c
        blender/source/blender/editors/mesh/editmesh_rip_edge.c
        blender/source/blender/editors/mesh/editmesh_select.c
        blender/source/blender/editors/mesh/editmesh_tools.c
        blender/source/blender/editors/mesh/editmesh_utils.c
        blender/source/blender/editors/mesh/mesh_data.c
        blender/source/blender/editors/mesh/mesh_ops.c
        blender/source/blender/editors/mesh/meshtools.c
        blender/source/blender/editors/metaball/mball_edit.c
        blender/source/blender/editors/metaball/mball_ops.c
        blender/source/blender/editors/object/object_add.c
        blender/source/blender/editors/object/object_bake.c
        blender/source/blender/editors/object/object_bake_api.c
        blender/source/blender/editors/object/object_constraint.c
        blender/source/blender/editors/object/object_edit.c
        blender/source/blender/editors/object/object_group.c
        blender/source/blender/editors/object/object_hook.c
        blender/source/blender/editors/object/object_lattice.c
        blender/source/blender/editors/object/object_lod.c
        blender/source/blender/editors/object/object_modifier.c
        blender/source/blender/editors/object/object_ops.c
        blender/source/blender/editors/object/object_random.c
        blender/source/blender/editors/object/object_relations.c
        blender/source/blender/editors/object/object_select.c
        blender/source/blender/editors/object/object_shapekey.c
        blender/source/blender/editors/object/object_transform.c
        blender/source/blender/editors/object/object_warp.c
        blender/source/blender/editors/object/object_vgroup.c
        blender/source/blender/editors/armature/armature_add.c
        blender/source/blender/editors/armature/armature_edit.c
        blender/source/blender/editors/armature/armature_naming.c
        blender/source/blender/editors/armature/armature_ops.c
        blender/source/blender/editors/armature/armature_relations.c
        blender/source/blender/editors/armature/armature_select.c
        blender/source/blender/editors/armature/armature_skinning.c
        blender/source/blender/editors/armature/armature_utils.c
        blender/source/blender/editors/armature/editarmature_generate.c
        blender/source/blender/editors/armature/editarmature_retarget.c
        blender/source/blender/editors/armature/editarmature_sketch.c
        blender/source/blender/editors/armature/meshlaplacian.c
        blender/source/blender/editors/armature/pose_edit.c
        blender/source/blender/editors/armature/pose_lib.c
        blender/source/blender/editors/armature/pose_group.c
        blender/source/blender/editors/armature/pose_select.c
        blender/source/blender/editors/armature/pose_slide.c
        blender/source/blender/editors/armature/pose_transform.c
        blender/source/blender/editors/armature/pose_utils.c
        blender/source/blender/editors/armature/reeb.c
        blender/source/blender/editors/physics/dynamicpaint_ops.c
        blender/source/blender/editors/physics/particle_boids.c
        blender/source/blender/editors/physics/particle_edit.c
        blender/source/blender/editors/physics/particle_object.c
        blender/source/blender/editors/physics/physics_fluid.c
        blender/source/blender/editors/physics/physics_ops.c
        blender/source/blender/editors/physics/physics_pointcache.c
        blender/source/blender/editors/physics/rigidbody_constraint.c
        blender/source/blender/editors/physics/rigidbody_object.c
        blender/source/blender/editors/physics/rigidbody_world.c
        blender/source/blender/editors/render/render_internal.c
        blender/source/blender/editors/render/render_opengl.c
        blender/source/blender/editors/render/render_ops.c
        blender/source/blender/editors/render/render_preview.c
        blender/source/blender/editors/render/render_shading.c
        blender/source/blender/editors/render/render_update.c
        blender/source/blender/editors/render/render_view.c
        blender/source/blender/editors/screen/area.c
        blender/source/blender/editors/screen/glutil.c
        blender/source/blender/editors/screen/screen_context.c
        blender/source/blender/editors/screen/screen_edit.c
        blender/source/blender/editors/screen/screen_ops.c
        blender/source/blender/editors/screen/screendump.c
        blender/source/blender/editors/sculpt_paint/paint_cursor.c
        blender/source/blender/editors/sculpt_paint/paint_curve.c
        blender/source/blender/editors/sculpt_paint/paint_hide.c
        blender/source/blender/editors/sculpt_paint/paint_image.c
        blender/source/blender/editors/sculpt_paint/paint_image_2d.c
        blender/source/blender/editors/sculpt_paint/paint_image_proj.c
        blender/source/blender/editors/sculpt_paint/paint_mask.c
        blender/source/blender/editors/sculpt_paint/paint_ops.c
        blender/source/blender/editors/sculpt_paint/paint_stroke.c
        blender/source/blender/editors/sculpt_paint/paint_undo.c
        blender/source/blender/editors/sculpt_paint/paint_utils.c
        blender/source/blender/editors/sculpt_paint/paint_vertex.c
        blender/source/blender/editors/sculpt_paint/paint_vertex_proj.c
        blender/source/blender/editors/sculpt_paint/sculpt.c
        blender/source/blender/editors/sculpt_paint/sculpt_undo.c
        blender/source/blender/editors/sculpt_paint/sculpt_uv.c
        blender/source/blender/editors/sound/sound_ops.c
        blender/source/blender/editors/animation/anim_channels_defines.c
        blender/source/blender/editors/animation/anim_channels_edit.c
        blender/source/blender/editors/animation/anim_deps.c
        blender/source/blender/editors/animation/anim_draw.c
        blender/source/blender/editors/animation/anim_filter.c
        blender/source/blender/editors/animation/anim_ipo_utils.c
        blender/source/blender/editors/animation/anim_markers.c
        blender/source/blender/editors/animation/anim_ops.c
        blender/source/blender/editors/animation/drivers.c
        blender/source/blender/editors/animation/fmodifier_ui.c
        blender/source/blender/editors/animation/keyframes_draw.c
        blender/source/blender/editors/animation/keyframes_edit.c
        blender/source/blender/editors/animation/keyframes_general.c
        blender/source/blender/editors/animation/keyframing.c
        blender/source/blender/editors/animation/keyingsets.c
        blender_bin/release/datafiles/bfont.pfb.c
        blender_bin/release/datafiles/bfont.ttf.c
        blender_bin/release/datafiles/bmonofont.ttf.c
        blender_bin/release/datafiles/startup.blend.c
        blender/source/blender/editors/mask/mask_add.c
        blender/source/blender/editors/mask/mask_draw.c
        blender/source/blender/editors/mask/mask_edit.c
        blender/source/blender/editors/mask/mask_editaction.c
        blender/source/blender/editors/mask/mask_ops.c
        blender/source/blender/editors/mask/mask_relationships.c
        blender/source/blender/editors/mask/mask_select.c
        blender/source/blender/editors/mask/mask_shapekey.c
        blender/source/blender/editors/io/io_ops.c
        blender/source/blender/render/intern/raytrace/rayobject.cpp
        blender/source/blender/render/intern/raytrace/rayobject_empty.cpp
        blender/source/blender/render/intern/raytrace/rayobject_octree.cpp
        blender/source/blender/render/intern/raytrace/rayobject_raycounter.cpp
        blender/source/blender/render/intern/raytrace/rayobject_svbvh.cpp
        blender/source/blender/render/intern/raytrace/rayobject_instance.cpp
        blender/source/blender/render/intern/raytrace/rayobject_qbvh.cpp
        blender/source/blender/render/intern/raytrace/rayobject_rtbuild.cpp
        blender/source/blender/render/intern/raytrace/rayobject_vbvh.cpp
        blender/source/blender/render/intern/source/bake.c
        blender/source/blender/render/intern/source/bake_api.c
        blender/source/blender/render/intern/source/convertblender.c
        blender/source/blender/render/intern/source/envmap.c
        blender/source/blender/render/intern/source/external_engine.c
        blender/source/blender/render/intern/source/imagetexture.c
        blender/source/blender/render/intern/source/initrender.c
        blender/source/blender/render/intern/source/multires_bake.c
        blender/source/blender/render/intern/source/occlusion.c
        blender/source/blender/render/intern/source/pipeline.c
        blender/source/blender/render/intern/source/pixelblending.c
        blender/source/blender/render/intern/source/pixelshading.c
        blender/source/blender/render/intern/source/pointdensity.c
        blender/source/blender/render/intern/source/rayshade.c
        blender/source/blender/render/intern/source/rendercore.c
        blender/source/blender/render/intern/source/render_result.c
        blender/source/blender/render/intern/source/render_texture.c
        blender/source/blender/render/intern/source/renderdatabase.c
        blender/source/blender/render/intern/source/shadbuf.c
        blender/source/blender/render/intern/source/shadeinput.c
        blender/source/blender/render/intern/source/shadeoutput.c
        blender/source/blender/render/intern/source/sss.c
        blender/source/blender/render/intern/source/strand.c
        blender/source/blender/render/intern/source/sunsky.c
        blender/source/blender/render/intern/source/texture_ocean.c
        blender/source/blender/render/intern/source/volume_precache.c
        blender/source/blender/render/intern/source/volumetric.c
        blender/source/blender/render/intern/source/voxeldata.c
        blender/source/blender/render/intern/source/zbuf.c
        blender/source/blender/ikplugin/intern/ikplugin_api.c
        blender/source/blender/modifiers/intern/MOD_armature.c
        blender/source/blender/modifiers/intern/MOD_array.c
        blender/source/blender/modifiers/intern/MOD_bevel.c
        blender/source/blender/modifiers/intern/MOD_boolean.c
        blender/source/blender/modifiers/intern/MOD_build.c
        blender/source/blender/modifiers/intern/MOD_cast.c
        blender/source/blender/modifiers/intern/MOD_cloth.c
        blender/source/blender/modifiers/intern/MOD_collision.c
        blender/source/blender/modifiers/intern/MOD_curve.c
        blender/source/blender/modifiers/intern/MOD_decimate.c
        blender/source/blender/modifiers/intern/MOD_displace.c
        blender/source/blender/modifiers/intern/MOD_dynamicpaint.c
        blender/source/blender/modifiers/intern/MOD_edgesplit.c
        blender/source/blender/modifiers/intern/MOD_explode.c
        blender/source/blender/modifiers/intern/MOD_fluidsim.c
        blender/source/blender/modifiers/intern/MOD_fluidsim_util.c
        blender/source/blender/modifiers/intern/MOD_hook.c
        blender/source/blender/modifiers/intern/MOD_laplaciandeform.c
        blender/source/blender/modifiers/intern/MOD_laplaciansmooth.c
        blender/source/blender/modifiers/intern/MOD_lattice.c
        blender/source/blender/modifiers/intern/MOD_mask.c
        blender/source/blender/modifiers/intern/MOD_meshcache.c
        blender/source/blender/modifiers/intern/MOD_meshcache_mdd.c
        blender/source/blender/modifiers/intern/MOD_meshcache_pc2.c
        blender/source/blender/modifiers/intern/MOD_meshcache_util.c
        blender/source/blender/modifiers/intern/MOD_meshdeform.c
        blender/source/blender/modifiers/intern/MOD_mirror.c
        blender/source/blender/modifiers/intern/MOD_multires.c
        blender/source/blender/modifiers/intern/MOD_none.c
        blender/source/blender/modifiers/intern/MOD_ocean.c
        blender/source/blender/modifiers/intern/MOD_particleinstance.c
        blender/source/blender/modifiers/intern/MOD_particlesystem.c
        blender/source/blender/modifiers/intern/MOD_remesh.c
        blender/source/blender/modifiers/intern/MOD_screw.c
        blender/source/blender/modifiers/intern/MOD_shapekey.c
        blender/source/blender/modifiers/intern/MOD_shrinkwrap.c
        blender/source/blender/modifiers/intern/MOD_simpledeform.c
        blender/source/blender/modifiers/intern/MOD_skin.c
        blender/source/blender/modifiers/intern/MOD_smoke.c
        blender/source/blender/modifiers/intern/MOD_smooth.c
        blender/source/blender/modifiers/intern/MOD_softbody.c
        blender/source/blender/modifiers/intern/MOD_solidify.c
        blender/source/blender/modifiers/intern/MOD_subsurf.c
        blender/source/blender/modifiers/intern/MOD_surface.c
        blender/source/blender/modifiers/intern/MOD_triangulate.c
        blender/source/blender/modifiers/intern/MOD_util.c
        blender/source/blender/modifiers/intern/MOD_uvwarp.c
        blender/source/blender/modifiers/intern/MOD_uvproject.c
        blender/source/blender/modifiers/intern/MOD_warp.c
        blender/source/blender/modifiers/intern/MOD_wave.c
        blender/source/blender/modifiers/intern/MOD_weightvg_util.c
        blender/source/blender/modifiers/intern/MOD_weightvgedit.c
        blender/source/blender/modifiers/intern/MOD_weightvgmix.c
        blender/source/blender/modifiers/intern/MOD_weightvgproximity.c
        blender/source/blender/modifiers/intern/MOD_wireframe.c
        blender/source/blender/bmesh/operators/bmo_beautify.c
        blender/source/blender/bmesh/operators/bmo_bevel.c
        blender/source/blender/bmesh/operators/bmo_bisect_plane.c
        blender/source/blender/bmesh/operators/bmo_bridge.c
        blender/source/blender/bmesh/operators/bmo_connect.c
        blender/source/blender/bmesh/operators/bmo_connect_nonplanar.c
        blender/source/blender/bmesh/operators/bmo_connect_pair.c
        blender/source/blender/bmesh/operators/bmo_create.c
        blender/source/blender/bmesh/operators/bmo_dissolve.c
        blender/source/blender/bmesh/operators/bmo_dupe.c
        blender/source/blender/bmesh/operators/bmo_edgenet.c
        blender/source/blender/bmesh/operators/bmo_extrude.c
        blender/source/blender/bmesh/operators/bmo_fill_attribute.c
        blender/source/blender/bmesh/operators/bmo_fill_edgeloop.c
        blender/source/blender/bmesh/operators/bmo_fill_grid.c
        blender/source/blender/bmesh/operators/bmo_fill_holes.c
        blender/source/blender/bmesh/operators/bmo_inset.c
        blender/source/blender/bmesh/operators/bmo_join_triangles.c
        blender/source/blender/bmesh/operators/bmo_mesh_conv.c
        blender/source/blender/bmesh/operators/bmo_mirror.c
        blender/source/blender/bmesh/operators/bmo_normals.c
        blender/source/blender/bmesh/operators/bmo_poke.c
        blender/source/blender/bmesh/operators/bmo_primitive.c
        blender/source/blender/bmesh/operators/bmo_removedoubles.c
        blender/source/blender/bmesh/operators/bmo_similar.c
        blender/source/blender/bmesh/operators/bmo_smooth_laplacian.c
        blender/source/blender/bmesh/operators/bmo_split_edges.c
        blender/source/blender/bmesh/operators/bmo_subdivide.c
        blender/source/blender/bmesh/operators/bmo_subdivide_edgering.c
        blender/source/blender/bmesh/operators/bmo_symmetrize.c
        blender/source/blender/bmesh/operators/bmo_triangulate.c
        blender/source/blender/bmesh/operators/bmo_unsubdivide.c
        blender/source/blender/bmesh/operators/bmo_utils.c
        blender/source/blender/bmesh/operators/bmo_wireframe.c
        blender/source/blender/bmesh/intern/bmesh_construct.c
        blender/source/blender/bmesh/intern/bmesh_core.c
        blender/source/blender/bmesh/intern/bmesh_edgeloop.c
        blender/source/blender/bmesh/intern/bmesh_delete.c
        blender/source/blender/bmesh/intern/bmesh_interp.c
        blender/source/blender/bmesh/intern/bmesh_iterators.c
        blender/source/blender/bmesh/intern/bmesh_log.c
        blender/source/blender/bmesh/intern/bmesh_marking.c
        blender/source/blender/bmesh/intern/bmesh_mesh.c
        blender/source/blender/bmesh/intern/bmesh_mesh_conv.c
        blender/source/blender/bmesh/intern/bmesh_mods.c
        blender/source/blender/bmesh/intern/bmesh_opdefines.c
        blender/source/blender/bmesh/intern/bmesh_operators.c
        blender/source/blender/bmesh/intern/bmesh_polygon.c
        blender/source/blender/bmesh/intern/bmesh_queries.c
        blender/source/blender/bmesh/intern/bmesh_structure.c
        blender/source/blender/bmesh/intern/bmesh_walkers.c
        blender/source/blender/bmesh/intern/bmesh_walkers_impl.c
        blender/source/blender/bmesh/tools/bmesh_beautify.c
        blender/source/blender/bmesh/tools/bmesh_bevel.c
        blender/source/blender/bmesh/tools/bmesh_bisect_plane.c
        blender/source/blender/bmesh/tools/bmesh_decimate_collapse.c
        blender/source/blender/bmesh/tools/bmesh_decimate_dissolve.c
        blender/source/blender/bmesh/tools/bmesh_decimate_unsubdivide.c
        blender/source/blender/bmesh/tools/bmesh_edgenet.c
        blender/source/blender/bmesh/tools/bmesh_edgesplit.c
        blender/source/blender/bmesh/tools/bmesh_intersect.c
        blender/source/blender/bmesh/tools/bmesh_path.c
        blender/source/blender/bmesh/tools/bmesh_region_match.c
        blender/source/blender/bmesh/tools/bmesh_triangulate.c
        blender/source/blender/bmesh/tools/bmesh_wireframe.c
        blender/source/blender/blenkernel/intern/CCGSubSurf.c
        blender/source/blender/blenkernel/intern/DerivedMesh.c
        blender/source/blender/blenkernel/intern/action.c
        blender/source/blender/blenkernel/intern/addon.c
        blender/source/blender/blenkernel/intern/anim.c
        blender/source/blender/blenkernel/intern/anim_sys.c
        blender/source/blender/blenkernel/intern/armature.c
        blender/source/blender/blenkernel/intern/autoexec.c
        blender/source/blender/blenkernel/intern/blender.c
        blender/source/blender/blenkernel/intern/bmfont.c
        blender/source/blender/blenkernel/intern/boids.c
        blender/source/blender/blenkernel/intern/bpath.c
        blender/source/blender/blenkernel/intern/brush.c
        blender/source/blender/blenkernel/intern/bullet.c
        blender/source/blender/blenkernel/intern/bvhutils.c
        blender/source/blender/blenkernel/intern/camera.c
        blender/source/blender/blenkernel/intern/cdderivedmesh.c
        blender/source/blender/blenkernel/intern/cloth.c
        blender/source/blender/blenkernel/intern/collision.c
        blender/source/blender/blenkernel/intern/colortools.c
        blender/source/blender/blenkernel/intern/constraint.c
        blender/source/blender/blenkernel/intern/context.c
        blender/source/blender/blenkernel/intern/crazyspace.c
        blender/source/blender/blenkernel/intern/curve.c
        blender/source/blender/blenkernel/intern/customdata.c
        blender/source/blender/blenkernel/intern/customdata_file.c
        blender/source/blender/blenkernel/intern/deform.c
        blender/source/blender/blenkernel/intern/depsgraph.c
        blender/source/blender/blenkernel/intern/displist.c
        blender/source/blender/blenkernel/intern/dynamicpaint.c
        blender/source/blender/blenkernel/intern/editderivedmesh.c
        blender/source/blender/blenkernel/intern/editmesh.c
        blender/source/blender/blenkernel/intern/editmesh_bvh.c
        blender/source/blender/blenkernel/intern/effect.c
        blender/source/blender/blenkernel/intern/fcurve.c
        blender/source/blender/blenkernel/intern/fluidsim.c
        blender/source/blender/blenkernel/intern/fmodifier.c
        blender/source/blender/blenkernel/intern/font.c
        blender/source/blender/blenkernel/intern/freestyle.c
        blender/source/blender/blenkernel/intern/gpencil.c
        blender/source/blender/blenkernel/intern/group.c
        blender/source/blender/blenkernel/intern/icons.c
        blender/source/blender/blenkernel/intern/idcode.c
        blender/source/blender/blenkernel/intern/idprop.c
        blender/source/blender/blenkernel/intern/image.c
        blender/source/blender/blenkernel/intern/image_gen.c
        blender/source/blender/blenkernel/intern/implicit.c
        blender/source/blender/blenkernel/intern/ipo.c
        blender/source/blender/blenkernel/intern/key.c
        blender/source/blender/blenkernel/intern/lamp.c
        blender/source/blender/blenkernel/intern/lattice.c
        blender/source/blender/blenkernel/intern/library.c
        blender/source/blender/blenkernel/intern/library_query.c
        blender/source/blender/blenkernel/intern/linestyle.c
        blender/source/blender/blenkernel/intern/mask.c
        blender/source/blender/blenkernel/intern/mask_evaluate.c
        blender/source/blender/blenkernel/intern/mask_rasterize.c
        blender/source/blender/blenkernel/intern/material.c
        blender/source/blender/blenkernel/intern/mball.c
        blender/source/blender/blenkernel/intern/mesh.c
        blender/source/blender/blenkernel/intern/mesh_evaluate.c
        blender/source/blender/blenkernel/intern/mesh_mapping.c
        blender/source/blender/blenkernel/intern/mesh_validate.c
        blender/source/blender/blenkernel/intern/modifier.c
        blender/source/blender/blenkernel/intern/modifiers_bmesh.c
        blender/source/blender/blenkernel/intern/movieclip.c
        blender/source/blender/blenkernel/intern/multires.c
        blender/source/blender/blenkernel/intern/nla.c
        blender/source/blender/blenkernel/intern/node.c
        blender/source/blender/blenkernel/intern/object.c
        blender/source/blender/blenkernel/intern/object_deform.c
        blender/source/blender/blenkernel/intern/object_dupli.c
        blender/source/blender/blenkernel/intern/ocean.c
        blender/source/blender/blenkernel/intern/packedFile.c
        blender/source/blender/blenkernel/intern/paint.c
        blender/source/blender/blenkernel/intern/particle.c
        blender/source/blender/blenkernel/intern/particle_system.c
        blender/source/blender/blenkernel/intern/pbvh.c
        blender/source/blender/blenkernel/intern/pbvh_bmesh.c
        blender/source/blender/blenkernel/intern/pointcache.c
        blender/source/blender/blenkernel/intern/property.c
        blender/source/blender/blenkernel/intern/report.c
        blender/source/blender/blenkernel/intern/rigidbody.c
        blender/source/blender/blenkernel/intern/sca.c
        blender/source/blender/blenkernel/intern/scene.c
        blender/source/blender/blenkernel/intern/screen.c
        blender/source/blender/blenkernel/intern/seqcache.c
        blender/source/blender/blenkernel/intern/seqeffects.c
        blender/source/blender/blenkernel/intern/seqmodifier.c
        blender/source/blender/blenkernel/intern/sequencer.c
        blender/source/blender/blenkernel/intern/shrinkwrap.c
        blender/source/blender/blenkernel/intern/sketch.c
        blender/source/blender/blenkernel/intern/smoke.c
        blender/source/blender/blenkernel/intern/softbody.c
        blender/source/blender/blenkernel/intern/sound.c
        blender/source/blender/blenkernel/intern/speaker.c
        blender/source/blender/blenkernel/intern/subsurf_ccg.c
        blender/source/blender/blenkernel/intern/suggestions.c
        blender/source/blender/blenkernel/intern/text.c
        blender/source/blender/blenkernel/intern/texture.c
        blender/source/blender/blenkernel/intern/tracking.c
        blender/source/blender/blenkernel/intern/tracking_detect.c
        blender/source/blender/blenkernel/intern/tracking_plane_tracker.c
        blender/source/blender/blenkernel/intern/tracking_region_tracker.c
        blender/source/blender/blenkernel/intern/tracking_solver.c
        blender/source/blender/blenkernel/intern/tracking_stabilize.c
        blender/source/blender/blenkernel/intern/tracking_util.c
        blender/source/blender/blenkernel/intern/treehash.c
        blender/source/blender/blenkernel/intern/unit.c
        blender/source/blender/blenkernel/intern/world.c
        blender/source/blender/blenkernel/intern/writeavi.c
        blender/source/blender/nodes/composite/nodes/node_composite_alphaOver.c
        blender/source/blender/nodes/composite/nodes/node_composite_bilateralblur.c
        blender/source/blender/nodes/composite/nodes/node_composite_blur.c
        blender/source/blender/nodes/composite/nodes/node_composite_brightness.c
        blender/source/blender/nodes/composite/nodes/node_composite_channelMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_chromaMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_colorMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_colorSpill.c
        blender/source/blender/nodes/composite/nodes/node_composite_colorbalance.c
        blender/source/blender/nodes/composite/nodes/node_composite_common.c
        blender/source/blender/nodes/composite/nodes/node_composite_composite.c
        blender/source/blender/nodes/composite/nodes/node_composite_cornerpin.c
        blender/source/blender/nodes/composite/nodes/node_composite_crop.c
        blender/source/blender/nodes/composite/nodes/node_composite_curves.c
        blender/source/blender/nodes/composite/nodes/node_composite_despeckle.c
        blender/source/blender/nodes/composite/nodes/node_composite_doubleEdgeMask.c
        blender/source/blender/nodes/composite/nodes/node_composite_defocus.c
        blender/source/blender/nodes/composite/nodes/node_composite_diffMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_dilate.c
        blender/source/blender/nodes/composite/nodes/node_composite_directionalblur.c
        blender/source/blender/nodes/composite/nodes/node_composite_displace.c
        blender/source/blender/nodes/composite/nodes/node_composite_distanceMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_filter.c
        blender/source/blender/nodes/composite/nodes/node_composite_flip.c
        blender/source/blender/nodes/composite/nodes/node_composite_gamma.c
        blender/source/blender/nodes/composite/nodes/node_composite_glare.c
        blender/source/blender/nodes/composite/nodes/node_composite_hueSatVal.c
        blender/source/blender/nodes/composite/nodes/node_composite_huecorrect.c
        blender/source/blender/nodes/composite/nodes/node_composite_idMask.c
        blender/source/blender/nodes/composite/nodes/node_composite_image.c
        blender/source/blender/nodes/composite/nodes/node_composite_inpaint.c
        blender/source/blender/nodes/composite/nodes/node_composite_invert.c
        blender/source/blender/nodes/composite/nodes/node_composite_keyingscreen.c
        blender/source/blender/nodes/composite/nodes/node_composite_keying.c
        blender/source/blender/nodes/composite/nodes/node_composite_lensdist.c
        blender/source/blender/nodes/composite/nodes/node_composite_levels.c
        blender/source/blender/nodes/composite/nodes/node_composite_lummaMatte.c
        blender/source/blender/nodes/composite/nodes/node_composite_mapUV.c
        blender/source/blender/nodes/composite/nodes/node_composite_mapValue.c
        blender/source/blender/nodes/composite/nodes/node_composite_mapRange.c
        blender/source/blender/nodes/composite/nodes/node_composite_math.c
        blender/source/blender/nodes/composite/nodes/node_composite_mask.c
        blender/source/blender/nodes/composite/nodes/node_composite_mixrgb.c
        blender/source/blender/nodes/composite/nodes/node_composite_movieclip.c
        blender/source/blender/nodes/composite/nodes/node_composite_moviedistortion.c
        blender/source/blender/nodes/composite/nodes/node_composite_normal.c
        blender/source/blender/nodes/composite/nodes/node_composite_normalize.c
        blender/source/blender/nodes/composite/nodes/node_composite_outputFile.c
        blender/source/blender/nodes/composite/nodes/node_composite_planetrackdeform.c
        blender/source/blender/nodes/composite/nodes/node_composite_premulkey.c
        blender/source/blender/nodes/composite/nodes/node_composite_rgb.c
        blender/source/blender/nodes/composite/nodes/node_composite_rotate.c
        blender/source/blender/nodes/composite/nodes/node_composite_scale.c
        blender/source/blender/nodes/composite/nodes/node_composite_sepcombHSVA.c
        blender/source/blender/nodes/composite/nodes/node_composite_sepcombRGBA.c
        blender/source/blender/nodes/composite/nodes/node_composite_sepcombYCCA.c
        blender/source/blender/nodes/composite/nodes/node_composite_sepcombYUVA.c
        blender/source/blender/nodes/composite/nodes/node_composite_setalpha.c
        blender/source/blender/nodes/composite/nodes/node_composite_splitViewer.c
        blender/source/blender/nodes/composite/nodes/node_composite_stabilize2d.c
        blender/source/blender/nodes/composite/nodes/node_composite_sunbeams.c
        blender/source/blender/nodes/composite/nodes/node_composite_texture.c
        blender/source/blender/nodes/composite/nodes/node_composite_tonemap.c
        blender/source/blender/nodes/composite/nodes/node_composite_trackpos.c
        blender/source/blender/nodes/composite/nodes/node_composite_transform.c
        blender/source/blender/nodes/composite/nodes/node_composite_translate.c
        blender/source/blender/nodes/composite/nodes/node_composite_valToRgb.c
        blender/source/blender/nodes/composite/nodes/node_composite_value.c
        blender/source/blender/nodes/composite/nodes/node_composite_vecBlur.c
        blender/source/blender/nodes/composite/nodes/node_composite_viewer.c
        blender/source/blender/nodes/composite/nodes/node_composite_zcombine.c
        blender/source/blender/nodes/composite/nodes/node_composite_bokehblur.c
        blender/source/blender/nodes/composite/nodes/node_composite_bokehimage.c
        blender/source/blender/nodes/composite/nodes/node_composite_boxmask.c
        blender/source/blender/nodes/composite/nodes/node_composite_ellipsemask.c
        blender/source/blender/nodes/composite/nodes/node_composite_switch.c
        blender/source/blender/nodes/composite/nodes/node_composite_colorcorrection.c
        blender/source/blender/nodes/composite/nodes/node_composite_pixelate.c
        blender/source/blender/nodes/composite/node_composite_tree.c
        blender/source/blender/nodes/composite/node_composite_util.c
        blender/source/blender/nodes/shader/nodes/node_shader_camera.c
        blender/source/blender/nodes/shader/nodes/node_shader_common.c
        blender/source/blender/nodes/shader/nodes/node_shader_curves.c
        blender/source/blender/nodes/shader/nodes/node_shader_gamma.c
        blender/source/blender/nodes/shader/nodes/node_shader_brightness.c
        blender/source/blender/nodes/shader/nodes/node_shader_geom.c
        blender/source/blender/nodes/shader/nodes/node_shader_hueSatVal.c
        blender/source/blender/nodes/shader/nodes/node_shader_invert.c
        blender/source/blender/nodes/shader/nodes/node_shader_lamp.c
        blender/source/blender/nodes/shader/nodes/node_shader_mapping.c
        blender/source/blender/nodes/shader/nodes/node_shader_material.c
        blender/source/blender/nodes/shader/nodes/node_shader_math.c
        blender/source/blender/nodes/shader/nodes/node_shader_mixRgb.c
        blender/source/blender/nodes/shader/nodes/node_shader_normal.c
        blender/source/blender/nodes/shader/nodes/node_shader_output.c
        blender/source/blender/nodes/shader/nodes/node_shader_rgb.c
        blender/source/blender/nodes/shader/nodes/node_shader_sepcombRGB.c
        blender/source/blender/nodes/shader/nodes/node_shader_sepcombHSV.c
        blender/source/blender/nodes/shader/nodes/node_shader_sepcombXYZ.c
        blender/source/blender/nodes/shader/nodes/node_shader_squeeze.c
        blender/source/blender/nodes/shader/nodes/node_shader_texture.c
        blender/source/blender/nodes/shader/nodes/node_shader_valToRgb.c
        blender/source/blender/nodes/shader/nodes/node_shader_value.c
        blender/source/blender/nodes/shader/nodes/node_shader_wireframe.c
        blender/source/blender/nodes/shader/nodes/node_shader_wavelength.c
        blender/source/blender/nodes/shader/nodes/node_shader_blackbody.c
        blender/source/blender/nodes/shader/nodes/node_shader_vectMath.c
        blender/source/blender/nodes/shader/nodes/node_shader_vectTransform.c
        blender/source/blender/nodes/shader/nodes/node_shader_add_shader.c
        blender/source/blender/nodes/shader/nodes/node_shader_ambient_occlusion.c
        blender/source/blender/nodes/shader/nodes/node_shader_attribute.c
        blender/source/blender/nodes/shader/nodes/node_shader_background.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_anisotropic.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_diffuse.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_glass.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_glossy.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_toon.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_refraction.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_translucent.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_transparent.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_velvet.c
        blender/source/blender/nodes/shader/nodes/node_shader_bsdf_hair.c
        blender/source/blender/nodes/shader/nodes/node_shader_bump.c
        blender/source/blender/nodes/shader/nodes/node_shader_emission.c
        blender/source/blender/nodes/shader/nodes/node_shader_fresnel.c
        blender/source/blender/nodes/shader/nodes/node_shader_geometry.c
        blender/source/blender/nodes/shader/nodes/node_shader_holdout.c
        blender/source/blender/nodes/shader/nodes/node_shader_layer_weight.c
        blender/source/blender/nodes/shader/nodes/node_shader_light_falloff.c
        blender/source/blender/nodes/shader/nodes/node_shader_light_path.c
        blender/source/blender/nodes/shader/nodes/node_shader_mix_shader.c
        blender/source/blender/nodes/shader/nodes/node_shader_normal_map.c
        blender/source/blender/nodes/shader/nodes/node_shader_object_info.c
        blender/source/blender/nodes/shader/nodes/node_shader_hair_info.c
        blender/source/blender/nodes/shader/nodes/node_shader_output_lamp.c
        blender/source/blender/nodes/shader/nodes/node_shader_output_material.c
        blender/source/blender/nodes/shader/nodes/node_shader_output_world.c
        blender/source/blender/nodes/shader/nodes/node_shader_output_linestyle.c
        blender/source/blender/nodes/shader/nodes/node_shader_particle_info.c
        blender/source/blender/nodes/shader/nodes/node_shader_script.c
        blender/source/blender/nodes/shader/nodes/node_shader_subsurface_scattering.c
        blender/source/blender/nodes/shader/nodes/node_shader_tangent.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_brick.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_checker.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_coord.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_environment.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_gradient.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_image.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_magic.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_musgrave.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_noise.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_sky.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_voronoi.c
        blender/source/blender/nodes/shader/nodes/node_shader_tex_wave.c
        blender/source/blender/nodes/shader/nodes/node_shader_volume_scatter.c
        blender/source/blender/nodes/shader/nodes/node_shader_volume_absorption.c
        blender/source/blender/nodes/shader/nodes/node_shader_uvAlongStroke.c
        blender/source/blender/nodes/shader/nodes/node_shader_uvmap.c
        blender/source/blender/nodes/shader/node_shader_tree.c
        blender/source/blender/nodes/shader/node_shader_util.c
        blender/source/blender/nodes/texture/nodes/node_texture_at.c
        blender/source/blender/nodes/texture/nodes/node_texture_bricks.c
        blender/source/blender/nodes/texture/nodes/node_texture_checker.c
        blender/source/blender/nodes/texture/nodes/node_texture_common.c
        blender/source/blender/nodes/texture/nodes/node_texture_compose.c
        blender/source/blender/nodes/texture/nodes/node_texture_coord.c
        blender/source/blender/nodes/texture/nodes/node_texture_curves.c
        blender/source/blender/nodes/texture/nodes/node_texture_decompose.c
        blender/source/blender/nodes/texture/nodes/node_texture_distance.c
        blender/source/blender/nodes/texture/nodes/node_texture_hueSatVal.c
        blender/source/blender/nodes/texture/nodes/node_texture_image.c
        blender/source/blender/nodes/texture/nodes/node_texture_invert.c
        blender/source/blender/nodes/texture/nodes/node_texture_math.c
        blender/source/blender/nodes/texture/nodes/node_texture_mixRgb.c
        blender/source/blender/nodes/texture/nodes/node_texture_output.c
        blender/source/blender/nodes/texture/nodes/node_texture_proc.c
        blender/source/blender/nodes/texture/nodes/node_texture_rotate.c
        blender/source/blender/nodes/texture/nodes/node_texture_scale.c
        blender/source/blender/nodes/texture/nodes/node_texture_texture.c
        blender/source/blender/nodes/texture/nodes/node_texture_translate.c
        blender/source/blender/nodes/texture/nodes/node_texture_valToNor.c
        blender/source/blender/nodes/texture/nodes/node_texture_valToRgb.c
        blender/source/blender/nodes/texture/nodes/node_texture_viewer.c
        blender/source/blender/nodes/texture/node_texture_tree.c
        blender/source/blender/nodes/texture/node_texture_util.c
        blender/source/blender/nodes/intern/node_util.c
        blender/source/blender/nodes/intern/node_exec.c
        blender/source/blender/nodes/intern/node_common.c
        blender/source/blender/nodes/intern/node_socket.c
        blender/source/blender/makesrna/intern/rna_access.c
        blender_bin/source/blender/makesrna/intern/rna_ID_gen.c
        blender_bin/source/blender/makesrna/intern/rna_action_gen.c
        blender_bin/source/blender/makesrna/intern/rna_actuator_gen.c
        blender_bin/source/blender/makesrna/intern/rna_animation_gen.c
        blender_bin/source/blender/makesrna/intern/rna_animviz_gen.c
        blender_bin/source/blender/makesrna/intern/rna_armature_gen.c
        blender_bin/source/blender/makesrna/intern/rna_boid_gen.c
        blender_bin/source/blender/makesrna/intern/rna_brush_gen.c
        blender_bin/source/blender/makesrna/intern/rna_camera_gen.c
        blender_bin/source/blender/makesrna/intern/rna_cloth_gen.c
        blender_bin/source/blender/makesrna/intern/rna_color_gen.c
        blender_bin/source/blender/makesrna/intern/rna_constraint_gen.c
        blender_bin/source/blender/makesrna/intern/rna_context_gen.c
        blender_bin/source/blender/makesrna/intern/rna_controller_gen.c
        blender_bin/source/blender/makesrna/intern/rna_curve_gen.c
        blender_bin/source/blender/makesrna/intern/rna_dynamicpaint_gen.c
        blender_bin/source/blender/makesrna/intern/rna_fcurve_gen.c
        blender_bin/source/blender/makesrna/intern/rna_fluidsim_gen.c
        blender_bin/source/blender/makesrna/intern/rna_gpencil_gen.c
        blender_bin/source/blender/makesrna/intern/rna_group_gen.c
        blender_bin/source/blender/makesrna/intern/rna_image_gen.c
        blender_bin/source/blender/makesrna/intern/rna_key_gen.c
        blender_bin/source/blender/makesrna/intern/rna_lamp_gen.c
        blender_bin/source/blender/makesrna/intern/rna_lattice_gen.c
        blender_bin/source/blender/makesrna/intern/rna_linestyle_gen.c
        blender_bin/source/blender/makesrna/intern/rna_main_gen.c
        blender_bin/source/blender/makesrna/intern/rna_mask_gen.c
        blender_bin/source/blender/makesrna/intern/rna_material_gen.c
        blender_bin/source/blender/makesrna/intern/rna_mesh_gen.c
        blender_bin/source/blender/makesrna/intern/rna_meta_gen.c
        blender_bin/source/blender/makesrna/intern/rna_modifier_gen.c
        blender_bin/source/blender/makesrna/intern/rna_movieclip_gen.c
        blender_bin/source/blender/makesrna/intern/rna_nla_gen.c
        blender_bin/source/blender/makesrna/intern/rna_nodetree_gen.c
        blender_bin/source/blender/makesrna/intern/rna_object_gen.c
        blender_bin/source/blender/makesrna/intern/rna_object_force_gen.c
        blender_bin/source/blender/makesrna/intern/rna_packedfile_gen.c
        blender_bin/source/blender/makesrna/intern/rna_particle_gen.c
        blender_bin/source/blender/makesrna/intern/rna_pose_gen.c
        blender_bin/source/blender/makesrna/intern/rna_property_gen.c
        blender_bin/source/blender/makesrna/intern/rna_render_gen.c
        blender_bin/source/blender/makesrna/intern/rna_rigidbody_gen.c
        blender_bin/source/blender/makesrna/intern/rna_rna_gen.c
        blender_bin/source/blender/makesrna/intern/rna_scene_gen.c
        blender_bin/source/blender/makesrna/intern/rna_screen_gen.c
        blender_bin/source/blender/makesrna/intern/rna_sculpt_paint_gen.c
        blender_bin/source/blender/makesrna/intern/rna_sensor_gen.c
        blender_bin/source/blender/makesrna/intern/rna_sequencer_gen.c
        blender_bin/source/blender/makesrna/intern/rna_smoke_gen.c
        blender_bin/source/blender/makesrna/intern/rna_sound_gen.c
        blender_bin/source/blender/makesrna/intern/rna_space_gen.c
        blender_bin/source/blender/makesrna/intern/rna_speaker_gen.c
        blender_bin/source/blender/makesrna/intern/rna_test_gen.c
        blender_bin/source/blender/makesrna/intern/rna_text_gen.c
        blender_bin/source/blender/makesrna/intern/rna_texture_gen.c
        blender_bin/source/blender/makesrna/intern/rna_timeline_gen.c
        blender_bin/source/blender/makesrna/intern/rna_tracking_gen.c
        blender_bin/source/blender/makesrna/intern/rna_ui_gen.c
        blender_bin/source/blender/makesrna/intern/rna_userdef_gen.c
        blender_bin/source/blender/makesrna/intern/rna_vfont_gen.c
        blender_bin/source/blender/makesrna/intern/rna_wm_gen.c
        blender_bin/source/blender/makesrna/intern/rna_world_gen.c
        blender/source/blender/gpu/intern/gpu_buffers.c
        blender/source/blender/gpu/intern/gpu_codegen.c
        blender/source/blender/gpu/intern/gpu_draw.c
        blender/source/blender/gpu/intern/gpu_extensions.c
        blender/source/blender/gpu/intern/gpu_init_exit.c
        blender/source/blender/gpu/intern/gpu_material.c
        blender/source/blender/gpu/intern/gpu_simple_shader.c
        blender/source/blender/gpu/intern/gpu_select.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_material.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_sep_gaussian_blur_frag.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_sep_gaussian_blur_vert.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_simple_frag.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_simple_vert.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_vertex.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_vsm_store_frag.glsl.c
        blender_bin/source/blender/gpu/shaders/gpu_shader_vsm_store_vert.glsl.c
        blender/source/blender/blenloader/intern/readblenentry.c
        blender/source/blender/blenloader/intern/readfile.c
        blender/source/blender/blenloader/intern/runtime.c
        blender/source/blender/blenloader/intern/undofile.c
        blender/source/blender/blenloader/intern/versioning_250.c
        blender/source/blender/blenloader/intern/versioning_260.c
        blender/source/blender/blenloader/intern/versioning_270.c
        blender/source/blender/blenloader/intern/versioning_defaults.c
        blender/source/blender/blenloader/intern/versioning_legacy.c
        blender/source/blender/blenloader/intern/writefile.c
        blender/source/blender/imbuf/intern/allocimbuf.c
        blender/source/blender/imbuf/intern/anim_movie.c
        blender/source/blender/imbuf/intern/bmp.c
        blender/source/blender/imbuf/intern/cache.c
        blender/source/blender/imbuf/intern/colormanagement.c
        blender/source/blender/imbuf/intern/divers.c
        blender/source/blender/imbuf/intern/filetype.c
        blender/source/blender/imbuf/intern/filter.c
        blender/source/blender/imbuf/intern/imageprocess.c
        blender/source/blender/imbuf/intern/indexer.c
        blender/source/blender/imbuf/intern/indexer_dv.c
        blender/source/blender/imbuf/intern/iris.c
        blender/source/blender/imbuf/intern/jpeg.c
        blender/source/blender/imbuf/intern/metadata.c
        blender/source/blender/imbuf/intern/module.c
        blender/source/blender/imbuf/intern/moviecache.c
        blender/source/blender/imbuf/intern/png.c
        blender/source/blender/imbuf/intern/readimage.c
        blender/source/blender/imbuf/intern/rectop.c
        blender/source/blender/imbuf/intern/rotate.c
        blender/source/blender/imbuf/intern/scaling.c
        blender/source/blender/imbuf/intern/targa.c
        blender/source/blender/imbuf/intern/thumbs.c
        blender/source/blender/imbuf/intern/thumbs_blend.c
        blender/source/blender/imbuf/intern/util.c
        blender/source/blender/imbuf/intern/writeimage.c
        blender/source/blender/imbuf/intern/openexr/openexr_stub.cpp
        blender/source/blender/blenlib/intern/BLI_args.c
        blender/source/blender/blenlib/intern/BLI_array.c
        blender/source/blender/blenlib/intern/BLI_dial.c
        blender/source/blender/blenlib/intern/BLI_dynstr.c
        blender/source/blender/blenlib/intern/BLI_ghash.c
        blender/source/blender/blenlib/intern/BLI_heap.c
        blender/source/blender/blenlib/intern/BLI_kdopbvh.c
        blender/source/blender/blenlib/intern/BLI_kdtree.c
        blender/source/blender/blenlib/intern/BLI_linklist.c
        blender/source/blender/blenlib/intern/BLI_memarena.c
        blender/source/blender/blenlib/intern/BLI_mempool.c
        blender/source/blender/blenlib/intern/DLRB_tree.c
        blender/source/blender/blenlib/intern/boxpack2d.c
        blender/source/blender/blenlib/intern/buffer.c
        blender/source/blender/blenlib/intern/callbacks.c
        blender/source/blender/blenlib/intern/convexhull2d.c
        blender/source/blender/blenlib/intern/easing.c
        blender/source/blender/blenlib/intern/edgehash.c
        blender/source/blender/blenlib/intern/endian_switch.c
        blender/source/blender/blenlib/intern/fileops.c
        blender/source/blender/blenlib/intern/freetypefont.c
        blender/source/blender/blenlib/intern/graph.c
        blender/source/blender/blenlib/intern/gsqueue.c
        blender/source/blender/blenlib/intern/jitter.c
        blender/source/blender/blenlib/intern/lasso.c
        blender/source/blender/blenlib/intern/listbase.c
        blender/source/blender/blenlib/intern/math_base.c
        blender/source/blender/blenlib/intern/math_base_inline.c
        blender/source/blender/blenlib/intern/math_color.c
        blender/source/blender/blenlib/intern/math_color_blend_inline.c
        blender/source/blender/blenlib/intern/math_color_inline.c
        blender/source/blender/blenlib/intern/math_geom.c
        blender/source/blender/blenlib/intern/math_geom_inline.c
        blender/source/blender/blenlib/intern/math_interp.c
        blender/source/blender/blenlib/intern/math_matrix.c
        blender/source/blender/blenlib/intern/math_rotation.c
        blender/source/blender/blenlib/intern/math_vector.c
        blender/source/blender/blenlib/intern/math_vector_inline.c
        blender/source/blender/blenlib/intern/md5.c
        blender/source/blender/blenlib/intern/noise.c
        blender/source/blender/blenlib/intern/path_util.c
        blender/source/blender/blenlib/intern/polyfill2d.c
        blender/source/blender/blenlib/intern/quadric.c
        blender/source/blender/blenlib/intern/rand.c
        blender/source/blender/blenlib/intern/rct.c
        blender/source/blender/blenlib/intern/scanfill.c
        blender/source/blender/blenlib/intern/scanfill_utils.c
        blender/source/blender/blenlib/intern/smallhash.c
        blender/source/blender/blenlib/intern/sort.c
        blender/source/blender/blenlib/intern/sort_utils.c
        blender/source/blender/blenlib/intern/stack.c
        blender/source/blender/blenlib/intern/storage.c
        blender/source/blender/blenlib/intern/string.c
        blender/source/blender/blenlib/intern/string_cursor_utf8.c
        blender/source/blender/blenlib/intern/string_utf8.c
        blender/source/blender/blenlib/intern/system.c
        blender/source/blender/blenlib/intern/task.c
        blender/source/blender/blenlib/intern/threads.c
        blender/source/blender/blenlib/intern/time.c
        blender/source/blender/blenlib/intern/timecode.c
        blender/source/blender/blenlib/intern/uvproject.c
        blender/source/blender/blenlib/intern/voronoi.c
        blender/source/blender/blenlib/intern/voxel.c
        blender/intern/ghost/intern/GHOST_Buttons.cpp
        blender/intern/ghost/intern/GHOST_C-api.cpp
        blender/intern/ghost/intern/GHOST_CallbackEventConsumer.cpp
        blender/intern/ghost/intern/GHOST_Context.cpp
        blender/intern/ghost/intern/GHOST_ContextNone.cpp
        blender/intern/ghost/intern/GHOST_DisplayManager.cpp
        blender/intern/ghost/intern/GHOST_EventManager.cpp
        blender/intern/ghost/intern/GHOST_ISystem.cpp
        blender/intern/ghost/intern/GHOST_ISystemPaths.cpp
        blender/intern/ghost/intern/GHOST_ModifierKeys.cpp
        blender/intern/ghost/intern/GHOST_Path-api.cpp
        blender/intern/ghost/intern/GHOST_Rect.cpp
        blender/intern/ghost/intern/GHOST_System.cpp
        blender/intern/ghost/intern/GHOST_TimerManager.cpp
        blender/intern/ghost/intern/GHOST_Window.cpp
        blender/intern/ghost/intern/GHOST_WindowManager.cpp
        blender/intern/ghost/intern/SPEC_SystemPathsSelect.cpp
        blender/intern/string/intern/STR_String.cpp
        blender/intern/memutil/intern/MEM_CacheLimiterC-Api.cpp
        blender/intern/memutil/intern/MEM_RefCountedC-Api.cpp
        blender/intern/guardedalloc/intern/mallocn.c
        blender/intern/guardedalloc/intern/mallocn_guarded_impl.c
        blender/intern/guardedalloc/intern/mallocn_lockfree_impl.c
        blender/extern/colamd/Source/colamd.c
        blender/extern/colamd/Source/colamd_global.c
        blender/source/blender/makesdna/intern/dna_genfile.c
        blender_bin/source/blender/makesdna/intern/dna.c
        blender/source/blender/blenfont/intern/blf.c
        blender/source/blender/blenfont/intern/blf_dir.c
        blender/source/blender/blenfont/intern/blf_font.c
        blender/source/blender/blenfont/intern/blf_glyph.c
        blender/source/blender/blenfont/intern/blf_lang.c
        blender/source/blender/blenfont/intern/blf_translation.c
        blender/source/blender/blenfont/intern/blf_util.c
        blender/intern/mikktspace/mikktspace.c
        blender/intern/raskter/raskter.c
        blender/intern/opencolorio/ocio_capi.cc
        blender/intern/opencolorio/fallback_impl.cc
        blender/extern/rangetree/range_tree_c_api.cc
        blender/extern/wcwidth/wcwidth.c
        blender/extern/libmv/intern/stub.cc
        blender/intern/glew-mx/intern/glew-mx.c
        blender/extern/glew/src/glew.c
        spec_gl.c
        spec_glcorearb.c
        spec_glu.c
        spec_glx.c
        spec_jpeg.c
        spec_ft.c
        zlib/adler32.c
        zlib/compress.c
        zlib/crc32.c
        zlib/deflate.c
        zlib/gzclose.c
        zlib/gzlib.c
        zlib/gzread.c
        zlib/gzwrite.c
        zlib/infback.c
        zlib/inflate.c
        zlib/inftrees.c
        zlib/trees.c
        zlib/uncompr.c
        zlib/zutil.c
        zlib/inffast.c
        libpng/png.c
        libpng/pngset.c
        libpng/pngget.c
        libpng/pngrutil.c
        libpng/pngtrans.c
        libpng/pngwutil.c
        libpng/pngmem.c
        libpng/pngpread.c
        libpng/pngread.c
        libpng/pngerror.c
        libpng/pngwrite.c
        libpng/pngrtran.c
        libpng/pngwtran.c
        libpng/pngrio.c
        libpng/pngwio.c
        specrand/specrand.c
        spec_backtrace.c
        )],


    'imagevalidate_526' => [qw(
        image_validator/ImageValidator.c
        )],
);

if (($^O =~ /MSWin32/i || $ENV{'SPEC_USE_WINDOWS_SOURCES_ANYWAY'}) && !$ENV{'SPEC_NOT_REALLY_WINDOWS'}) {
    push @{ $sources{ 'blender_r' } }, (qw(
        blender/source/blender/blenlib/intern/fnmatch.c
        blender/source/blender/blenlib/intern/winstuff.c
        blender/source/blender/blenlib/intern/winstuff_dir.c
        blender/intern/utfconv/utfconv.c
        blender/intern/utfconv/utf_winfunc.c
        blender/intern/guardedalloc/intern/mmap_win.c
        ));
}

##other binary targets from the  build of blender... not known to be used in SPEC cpu... will keep in object.pm for reference
##        'makesrna_r' => [ qw(
##                blender/source/blender/makesrna/intern/makesrna.c
##                blender/source/blender/makesrna/intern/rna_define.c
##                blender/source/blender/makesrna/intern/rna_ID.c
##                blender/source/blender/makesrna/intern/rna_action.c
##                blender/source/blender/makesrna/intern/rna_actuator.c
##                blender/source/blender/makesrna/intern/rna_animation.c
##                blender/source/blender/makesrna/intern/rna_animviz.c
##                blender/source/blender/makesrna/intern/rna_armature.c
##                blender/source/blender/makesrna/intern/rna_boid.c
##                blender/source/blender/makesrna/intern/rna_brush.c
##                blender/source/blender/makesrna/intern/rna_camera.c
##                blender/source/blender/makesrna/intern/rna_cloth.c
##                blender/source/blender/makesrna/intern/rna_color.c
##                blender/source/blender/makesrna/intern/rna_constraint.c
##                blender/source/blender/makesrna/intern/rna_context.c
##                blender/source/blender/makesrna/intern/rna_controller.c
##                blender/source/blender/makesrna/intern/rna_curve.c
##                blender/source/blender/makesrna/intern/rna_dynamicpaint.c
##                blender/source/blender/makesrna/intern/rna_fcurve.c
##                blender/source/blender/makesrna/intern/rna_fluidsim.c
##                blender/source/blender/makesrna/intern/rna_gpencil.c
##                blender/source/blender/makesrna/intern/rna_group.c
##                blender/source/blender/makesrna/intern/rna_image.c
##                blender/source/blender/makesrna/intern/rna_key.c
##                blender/source/blender/makesrna/intern/rna_lamp.c
##                blender/source/blender/makesrna/intern/rna_lattice.c
##                blender/source/blender/makesrna/intern/rna_linestyle.c
##                blender/source/blender/makesrna/intern/rna_main.c
##                blender/source/blender/makesrna/intern/rna_mask.c
##                blender/source/blender/makesrna/intern/rna_material.c
##                blender/source/blender/makesrna/intern/rna_mesh.c
##                blender/source/blender/makesrna/intern/rna_meta.c
##                blender/source/blender/makesrna/intern/rna_modifier.c
##                blender/source/blender/makesrna/intern/rna_movieclip.c
##                blender/source/blender/makesrna/intern/rna_nla.c
##                blender/source/blender/makesrna/intern/rna_nodetree.c
##                blender/source/blender/makesrna/intern/rna_object.c
##                blender/source/blender/makesrna/intern/rna_object_force.c
##                blender/source/blender/makesrna/intern/rna_packedfile.c
##                blender/source/blender/makesrna/intern/rna_particle.c
##                blender/source/blender/makesrna/intern/rna_pose.c
##                blender/source/blender/makesrna/intern/rna_property.c
##                blender/source/blender/makesrna/intern/rna_render.c
##                blender/source/blender/makesrna/intern/rna_rigidbody.c
##                blender/source/blender/makesrna/intern/rna_rna.c
##                blender/source/blender/makesrna/intern/rna_scene.c
##                blender/source/blender/makesrna/intern/rna_screen.c
##                blender/source/blender/makesrna/intern/rna_sculpt_paint.c
##                blender/source/blender/makesrna/intern/rna_sensor.c
##                blender/source/blender/makesrna/intern/rna_sequencer.c
##                blender/source/blender/makesrna/intern/rna_smoke.c
##                blender/source/blender/makesrna/intern/rna_sound.c
##                blender/source/blender/makesrna/intern/rna_space.c
##                blender/source/blender/makesrna/intern/rna_speaker.c
##                blender/source/blender/makesrna/intern/rna_test.c
##                blender/source/blender/makesrna/intern/rna_text.c
##                blender/source/blender/makesrna/intern/rna_texture.c
##                blender/source/blender/makesrna/intern/rna_timeline.c
##                blender/source/blender/makesrna/intern/rna_tracking.c
##                blender/source/blender/makesrna/intern/rna_ui.c
##                blender/source/blender/makesrna/intern/rna_userdef.c
##                blender/source/blender/makesrna/intern/rna_vfont.c
##                blender/source/blender/makesrna/intern/rna_wm.c
##                blender/source/blender/makesrna/intern/rna_world.c
##                blender/source/blender/makesrna/intern/rna_action_api.c
##                blender/source/blender/makesrna/intern/rna_actuator_api.c
#                blender/source/blender/makesrna/intern/rna_animation_api.c
#                blender/source/blender/makesrna/intern/rna_armature_api.c
#                blender/source/blender/makesrna/intern/rna_camera_api.c
#                blender/source/blender/makesrna/intern/rna_controller_api.c
#                blender/source/blender/makesrna/intern/rna_curve_api.c
#                blender/source/blender/makesrna/intern/rna_fcurve_api.c
#                blender/source/blender/makesrna/intern/rna_image_api.c
#                blender/source/blender/makesrna/intern/rna_lattice_api.c
#                blender/source/blender/makesrna/intern/rna_main_api.c
#                blender/source/blender/makesrna/intern/rna_material_api.c
#                blender/source/blender/makesrna/intern/rna_mesh_api.c
#                blender/source/blender/makesrna/intern/rna_meta_api.c
#                blender/source/blender/makesrna/intern/rna_texture_api.c
#                blender/source/blender/makesrna/intern/rna_object_api.c
#                blender/source/blender/makesrna/intern/rna_pose_api.c
#                blender/source/blender/makesrna/intern/rna_scene_api.c
#                blender/source/blender/makesrna/intern/rna_sensor_api.c
#                blender/source/blender/makesrna/intern/rna_sequencer_api.c
#                blender/source/blender/makesrna/intern/rna_space_api.c
#                blender/source/blender/makesrna/intern/rna_text_api.c
#                blender/source/blender/makesrna/intern/rna_ui_api.c
#                blender/source/blender/makesrna/intern/rna_wm_api.c
#                blender/intern/guardedalloc/intern/mallocn.c
#                blender/intern/guardedalloc/intern/mallocn_guarded_impl.c
#                blender/intern/guardedalloc/intern/mallocn_lockfree_impl.c
#                blender/intern/guardedalloc/intern/mmap_win.c
#                blender/source/blender/makesdna/intern/dna_genfile.c
#                blender_bin/source/blender/makesdna/intern/dna.c
#                blender/source/blender/blenlib/intern/BLI_mempool.c
#                blender/source/blender/blenlib/intern/listbase.c
#                blender/source/blender/blenlib/intern/BLI_ghash.c
#        )],
#        'makesdna_r' => [ qw(
#                blender/source/blender/makesdna/intern/makesdna.c
#                blender/intern/guardedalloc/intern/mallocn.c
#                blender/intern/guardedalloc/intern/mallocn_guarded_impl.c
#                blender/intern/guardedalloc/intern/mallocn_lockfree_impl.c
#        )],

foreach my $exe (keys %sources) {
    my $newexe = $exe;
    $newexe =~ s/_r$/_s/;
    $newexe =~ s/_526/_626/;
    $sources{$newexe} = $sources{$exe};
}

use Carp;
use File::Basename;

sub compare_commands {
    my ($me) = @_;
    my @rc;
    my $exe = (sort grep { /^imagevalidate/i } $me->exe_files)[0];
    my $maxthreshold = 0.01;
    my $threshold = 0.75;

    foreach my $origfile (sort grep { /\Q.org.tga\E$/ } $me->compare_files_abs) {
        my $outfile = basename($origfile, '.org.tga');
        push @rc, (
            {
                'command' => $exe,
                'args'    => [ qw(-avg -threshold), $threshold, qw(-maxthreshold), $maxthreshold, "${outfile}.tga", $origfile ],
                'output'  => "imagevalidate_${outfile}.out",
                'error'   => "imagevalidate_${outfile}.err",
            }
        );
    }

    return @rc;
}

sub invoke {
    my ($me) = @_;
    my @rc;
    my $exe = (sort grep { /^blender/i } $me->exe_files)[0];

    my @blenderargs = main::read_file('control') or confess("Unable to open 'control' file");

    foreach my $run (@blenderargs) {
        my @args = split /\s+/, $run;
        my $lastframe = (reverse sort { $a <=> $b } ($run =~ /-[se]\s*(\d+)(?=\s|$)/g))[0];
        foreach my $file (sort grep { /\.blend$/ } $me->input_files_base) {
            my $name = basename($file, '.blend');
            push @rc, (
                {
                    'command' => $exe,
                    'args'    => [ $file, '--render-output', "${name}_", qw(--threads 1 -b), @args ],
                    'error'   => "${name}.${lastframe}.spec.err",
                    'output'  => "${name}.${lastframe}.spec.out",
                }
            );
        }
    }

    return @rc;
}

1;

# Editor settings: (please leave this at the end of the file)
# vim: set filetype=perl syntax=perl shiftwidth=4 tabstop=8 expandtab nosmarttab:
