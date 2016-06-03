add_library(mbgl-core STATIC
    include/mbgl/mbgl.hpp
)

target_sources(mbgl-core
    PRIVATE src/clipper/clipper.cpp

    PRIVATE src/csscolorparser/csscolorparser.cpp

    PRIVATE src/parsedate/parsedate.c

    PRIVATE src/mbgl/algorithm/covered_by_children.hpp
    PRIVATE src/mbgl/algorithm/generate_clip_ids.cpp
    PRIVATE src/mbgl/algorithm/generate_clip_ids.hpp
    PRIVATE src/mbgl/algorithm/generate_clip_ids_impl.hpp
    PRIVATE src/mbgl/algorithm/update_renderables.hpp

    PRIVATE include/mbgl/annotation/annotation.hpp
    PRIVATE include/mbgl/annotation/point_annotation.hpp
    PRIVATE include/mbgl/annotation/shape_annotation.hpp
    PRIVATE src/mbgl/annotation/annotation_manager.cpp
    PRIVATE src/mbgl/annotation/annotation_manager.hpp
    PRIVATE src/mbgl/annotation/annotation_tile.cpp
    PRIVATE src/mbgl/annotation/annotation_tile.hpp
    PRIVATE src/mbgl/annotation/point_annotation_impl.cpp
    PRIVATE src/mbgl/annotation/point_annotation_impl.hpp
    PRIVATE src/mbgl/annotation/shape_annotation_impl.cpp
    PRIVATE src/mbgl/annotation/shape_annotation_impl.hpp

    PRIVATE src/mbgl/geometry/anchor.hpp
    PRIVATE src/mbgl/geometry/binpack.hpp
    PRIVATE src/mbgl/geometry/buffer.hpp
    PRIVATE src/mbgl/geometry/circle_buffer.cpp
    PRIVATE src/mbgl/geometry/circle_buffer.hpp
    PRIVATE src/mbgl/geometry/collision_box_buffer.cpp
    PRIVATE src/mbgl/geometry/collision_box_buffer.hpp
    PRIVATE src/mbgl/geometry/debug_font_buffer.cpp
    PRIVATE src/mbgl/geometry/debug_font_buffer.hpp
    PRIVATE src/mbgl/geometry/debug_font_data.hpp
    PRIVATE src/mbgl/geometry/elements_buffer.cpp
    PRIVATE src/mbgl/geometry/elements_buffer.hpp
    PRIVATE src/mbgl/geometry/feature_index.cpp
    PRIVATE src/mbgl/geometry/feature_index.hpp
    PRIVATE src/mbgl/geometry/fill_buffer.cpp
    PRIVATE src/mbgl/geometry/fill_buffer.hpp
    PRIVATE src/mbgl/geometry/glyph_atlas.cpp
    PRIVATE src/mbgl/geometry/glyph_atlas.hpp
    PRIVATE src/mbgl/geometry/icon_buffer.cpp
    PRIVATE src/mbgl/geometry/icon_buffer.hpp
    PRIVATE src/mbgl/geometry/line_atlas.cpp
    PRIVATE src/mbgl/geometry/line_atlas.hpp
    PRIVATE src/mbgl/geometry/line_buffer.cpp
    PRIVATE src/mbgl/geometry/line_buffer.hpp
    PRIVATE src/mbgl/geometry/static_vertex_buffer.cpp
    PRIVATE src/mbgl/geometry/static_vertex_buffer.hpp
    PRIVATE src/mbgl/geometry/text_buffer.cpp
    PRIVATE src/mbgl/geometry/text_buffer.hpp
    PRIVATE src/mbgl/geometry/vao.cpp
    PRIVATE src/mbgl/geometry/vao.hpp

    PRIVATE include/mbgl/gl/gl.hpp
    PRIVATE include/mbgl/gl/gl_helper.hpp
    PRIVATE include/mbgl/gl/gl_values.hpp
    PRIVATE src/mbgl/gl/debugging.cpp
    PRIVATE src/mbgl/gl/debugging.hpp
    PRIVATE src/mbgl/gl/gl.cpp
    PRIVATE src/mbgl/gl/gl_config.cpp
    PRIVATE src/mbgl/gl/gl_config.hpp
    PRIVATE src/mbgl/gl/object_store.cpp
    PRIVATE src/mbgl/gl/object_store.hpp
    PRIVATE src/mbgl/gl/texture_pool.cpp
    PRIVATE src/mbgl/gl/texture_pool.hpp

    PRIVATE src/mbgl/layer/background_layer.cpp
    PRIVATE src/mbgl/layer/background_layer.hpp
    PRIVATE src/mbgl/layer/circle_layer.cpp
    PRIVATE src/mbgl/layer/circle_layer.hpp
    PRIVATE src/mbgl/layer/custom_layer.cpp
    PRIVATE src/mbgl/layer/custom_layer.hpp
    PRIVATE src/mbgl/layer/fill_layer.cpp
    PRIVATE src/mbgl/layer/fill_layer.hpp
    PRIVATE src/mbgl/layer/line_layer.cpp
    PRIVATE src/mbgl/layer/line_layer.hpp
    PRIVATE src/mbgl/layer/raster_layer.cpp
    PRIVATE src/mbgl/layer/raster_layer.hpp
    PRIVATE src/mbgl/layer/symbol_layer.cpp
    PRIVATE src/mbgl/layer/symbol_layer.hpp

    PRIVATE include/mbgl/map/camera.hpp
    PRIVATE include/mbgl/map/map.hpp
    PRIVATE include/mbgl/map/mode.hpp
    PRIVATE include/mbgl/map/update.hpp
    PRIVATE include/mbgl/map/view.hpp
    PRIVATE src/mbgl/map/change.hpp
    PRIVATE src/mbgl/map/map.cpp
    PRIVATE src/mbgl/map/transform.cpp
    PRIVATE src/mbgl/map/transform.hpp
    PRIVATE src/mbgl/map/transform_state.cpp
    PRIVATE src/mbgl/map/transform_state.hpp
    PRIVATE src/mbgl/map/view.cpp

    PRIVATE include/mbgl/math/clamp.hpp
    PRIVATE include/mbgl/math/minmax.hpp
    PRIVATE include/mbgl/math/wrap.hpp

    PRIVATE include/mbgl/platform/darwin
    PRIVATE include/mbgl/platform/darwin/reachability.h
    PRIVATE include/mbgl/platform/darwin/settings_nsuserdefaults.hpp
    PRIVATE include/mbgl/platform/default
    PRIVATE include/mbgl/platform/default/glfw_view.hpp
    PRIVATE include/mbgl/platform/default/headless_display.hpp
    PRIVATE include/mbgl/platform/default/headless_view.hpp
    PRIVATE include/mbgl/platform/default/settings_json.hpp
    PRIVATE include/mbgl/platform/event.hpp
    PRIVATE include/mbgl/platform/log.hpp
    PRIVATE include/mbgl/platform/platform.hpp
    PRIVATE src/mbgl/platform/log.cpp

    PRIVATE src/mbgl/renderer/bucket.hpp
    PRIVATE src/mbgl/renderer/circle_bucket.cpp
    PRIVATE src/mbgl/renderer/circle_bucket.hpp
    PRIVATE src/mbgl/renderer/debug_bucket.cpp
    PRIVATE src/mbgl/renderer/debug_bucket.hpp
    PRIVATE src/mbgl/renderer/fill_bucket.cpp
    PRIVATE src/mbgl/renderer/fill_bucket.hpp
    PRIVATE src/mbgl/renderer/frame_history.cpp
    PRIVATE src/mbgl/renderer/frame_history.hpp
    PRIVATE src/mbgl/renderer/line_bucket.cpp
    PRIVATE src/mbgl/renderer/line_bucket.hpp
    PRIVATE src/mbgl/renderer/painter.cpp
    PRIVATE src/mbgl/renderer/painter.hpp
    PRIVATE src/mbgl/renderer/painter_background.cpp
    PRIVATE src/mbgl/renderer/painter_circle.cpp
    PRIVATE src/mbgl/renderer/painter_clipping.cpp
    PRIVATE src/mbgl/renderer/painter_debug.cpp
    PRIVATE src/mbgl/renderer/painter_fill.cpp
    PRIVATE src/mbgl/renderer/painter_line.cpp
    PRIVATE src/mbgl/renderer/painter_raster.cpp
    PRIVATE src/mbgl/renderer/painter_symbol.cpp
    PRIVATE src/mbgl/renderer/raster_bucket.cpp
    PRIVATE src/mbgl/renderer/raster_bucket.hpp
    PRIVATE src/mbgl/renderer/render_pass.hpp
    PRIVATE src/mbgl/renderer/renderable.hpp
    PRIVATE src/mbgl/renderer/symbol_bucket.cpp
    PRIVATE src/mbgl/renderer/symbol_bucket.hpp

    PRIVATE src/mbgl/shader/circle_shader.cpp
    PRIVATE src/mbgl/shader/circle_shader.hpp
    PRIVATE src/mbgl/shader/collision_box_shader.cpp
    PRIVATE src/mbgl/shader/collision_box_shader.hpp
    PRIVATE src/mbgl/shader/icon_shader.cpp
    PRIVATE src/mbgl/shader/icon_shader.hpp
    PRIVATE src/mbgl/shader/line_shader.cpp
    PRIVATE src/mbgl/shader/line_shader.hpp
    PRIVATE src/mbgl/shader/linepattern_shader.cpp
    PRIVATE src/mbgl/shader/linepattern_shader.hpp
    PRIVATE src/mbgl/shader/linesdf_shader.cpp
    PRIVATE src/mbgl/shader/linesdf_shader.hpp
    PRIVATE src/mbgl/shader/outline_shader.cpp
    PRIVATE src/mbgl/shader/outline_shader.hpp
    PRIVATE src/mbgl/shader/outlinepattern_shader.cpp
    PRIVATE src/mbgl/shader/outlinepattern_shader.hpp
    PRIVATE src/mbgl/shader/pattern_shader.cpp
    PRIVATE src/mbgl/shader/pattern_shader.hpp
    PRIVATE src/mbgl/shader/plain_shader.cpp
    PRIVATE src/mbgl/shader/plain_shader.hpp
    PRIVATE src/mbgl/shader/raster_shader.cpp
    PRIVATE src/mbgl/shader/raster_shader.hpp
    PRIVATE src/mbgl/shader/sdf_shader.cpp
    PRIVATE src/mbgl/shader/sdf_shader.hpp
    PRIVATE src/mbgl/shader/shader.cpp
    PRIVATE src/mbgl/shader/shader.hpp
    PRIVATE src/mbgl/shader/uniform.cpp
    PRIVATE src/mbgl/shader/uniform.hpp

    PRIVATE src/mbgl/source/source.cpp
    PRIVATE src/mbgl/source/source.hpp
    PRIVATE src/mbgl/source/source_info.hpp
    PRIVATE src/mbgl/source/source_observer.hpp

    PRIVATE include/mbgl/sprite/sprite_image.hpp
    PRIVATE src/mbgl/sprite/sprite_atlas.cpp
    PRIVATE src/mbgl/sprite/sprite_atlas.hpp
    PRIVATE src/mbgl/sprite/sprite_image.cpp
    PRIVATE src/mbgl/sprite/sprite_parser.cpp
    PRIVATE src/mbgl/sprite/sprite_parser.hpp
    PRIVATE src/mbgl/sprite/sprite_store.cpp
    PRIVATE src/mbgl/sprite/sprite_store.hpp
    PRIVATE src/mbgl/sprite/sprite_store_observer.hpp

    PRIVATE include/mbgl/storage/default_file_source.hpp
    PRIVATE include/mbgl/storage/file_source.hpp
    PRIVATE include/mbgl/storage/network_status.hpp
    PRIVATE include/mbgl/storage/offline.hpp
    PRIVATE include/mbgl/storage/online_file_source.hpp
    PRIVATE include/mbgl/storage/resource.hpp
    PRIVATE include/mbgl/storage/response.hpp
    PRIVATE src/mbgl/storage
    PRIVATE src/mbgl/storage/asset_file_source.hpp
    PRIVATE src/mbgl/storage/http_file_source.hpp
    PRIVATE src/mbgl/storage/network_status.cpp
    PRIVATE src/mbgl/storage/resource.cpp
    PRIVATE src/mbgl/storage/response.cpp

    PRIVATE include/mbgl/style/property_transition.hpp
    PRIVATE include/mbgl/style/types.hpp
    PRIVATE src/mbgl/style/class_dictionary.cpp
    PRIVATE src/mbgl/style/class_dictionary.hpp
    PRIVATE src/mbgl/style/filter.hpp
    PRIVATE src/mbgl/style/filter_evaluator.hpp
    PRIVATE src/mbgl/style/function.hpp
    PRIVATE src/mbgl/style/function_evaluator.cpp
    PRIVATE src/mbgl/style/function_evaluator.hpp
    PRIVATE src/mbgl/style/layout_property.hpp
    PRIVATE src/mbgl/style/paint_property.hpp
    PRIVATE src/mbgl/style/property_parsing.cpp
    PRIVATE src/mbgl/style/property_parsing.hpp
    PRIVATE src/mbgl/style/render_item.hpp
    PRIVATE src/mbgl/style/style.cpp
    PRIVATE src/mbgl/style/style.hpp
    PRIVATE src/mbgl/style/style_bucket_parameters.cpp
    PRIVATE src/mbgl/style/style_bucket_parameters.hpp
    PRIVATE src/mbgl/style/style_calculation_parameters.hpp
    PRIVATE src/mbgl/style/style_cascade_parameters.hpp
    PRIVATE src/mbgl/style/style_layer.cpp
    PRIVATE src/mbgl/style/style_layer.hpp
    PRIVATE src/mbgl/style/style_observer.hpp
    PRIVATE src/mbgl/style/style_parser.cpp
    PRIVATE src/mbgl/style/style_parser.hpp
    PRIVATE src/mbgl/style/style_query_parameters.hpp
    PRIVATE src/mbgl/style/style_render_parameters.hpp
    PRIVATE src/mbgl/style/style_update_parameters.hpp
    PRIVATE src/mbgl/style/types.cpp
    PRIVATE src/mbgl/style/zoom_history.hpp

    PRIVATE src/mbgl/text/check_max_angle.cpp
    PRIVATE src/mbgl/text/check_max_angle.hpp
    PRIVATE src/mbgl/text/collision_feature.cpp
    PRIVATE src/mbgl/text/collision_feature.hpp
    PRIVATE src/mbgl/text/collision_tile.cpp
    PRIVATE src/mbgl/text/collision_tile.hpp
    PRIVATE src/mbgl/text/get_anchors.cpp
    PRIVATE src/mbgl/text/get_anchors.hpp
    PRIVATE src/mbgl/text/glyph.cpp
    PRIVATE src/mbgl/text/glyph.hpp
    PRIVATE src/mbgl/text/glyph_pbf.cpp
    PRIVATE src/mbgl/text/glyph_pbf.hpp
    PRIVATE src/mbgl/text/glyph_range.hpp
    PRIVATE src/mbgl/text/glyph_set.cpp
    PRIVATE src/mbgl/text/glyph_set.hpp
    PRIVATE src/mbgl/text/glyph_store.cpp
    PRIVATE src/mbgl/text/glyph_store.hpp
    PRIVATE src/mbgl/text/glyph_store_observer.hpp
    PRIVATE src/mbgl/text/placement_config.hpp
    PRIVATE src/mbgl/text/quads.cpp
    PRIVATE src/mbgl/text/quads.hpp
    PRIVATE src/mbgl/text/shaping.cpp
    PRIVATE src/mbgl/text/shaping.hpp

    PRIVATE src/mbgl/tile/geojson_tile.cpp
    PRIVATE src/mbgl/tile/geojson_tile.hpp
    PRIVATE src/mbgl/tile/geometry_tile.cpp
    PRIVATE src/mbgl/tile/geometry_tile.hpp
    PRIVATE src/mbgl/tile/raster_tile_data.cpp
    PRIVATE src/mbgl/tile/raster_tile_data.hpp
    PRIVATE src/mbgl/tile/tile.hpp
    PRIVATE src/mbgl/tile/tile_cache.cpp
    PRIVATE src/mbgl/tile/tile_cache.hpp
    PRIVATE src/mbgl/tile/tile_data.cpp
    PRIVATE src/mbgl/tile/tile_data.hpp
    PRIVATE src/mbgl/tile/tile_id.hpp
    PRIVATE src/mbgl/tile/tile_id_io.cpp
    PRIVATE src/mbgl/tile/tile_worker.cpp
    PRIVATE src/mbgl/tile/tile_worker.hpp
    PRIVATE src/mbgl/tile/vector_tile.cpp
    PRIVATE src/mbgl/tile/vector_tile.hpp
    PRIVATE src/mbgl/tile/vector_tile_data.cpp
    PRIVATE src/mbgl/tile/vector_tile_data.hpp

    PRIVATE include/mbgl/util/async_request.hpp
    PRIVATE include/mbgl/util/chrono.hpp
    PRIVATE include/mbgl/util/constants.hpp
    PRIVATE include/mbgl/util/default_styles.hpp
    PRIVATE include/mbgl/util/enum.hpp
    PRIVATE include/mbgl/util/exception.hpp
    PRIVATE include/mbgl/util/feature.hpp
    PRIVATE include/mbgl/util/geo.hpp
    PRIVATE include/mbgl/util/image.hpp
    PRIVATE include/mbgl/util/noncopyable.hpp
    PRIVATE include/mbgl/util/optional.hpp
    PRIVATE include/mbgl/util/projection.hpp
    PRIVATE include/mbgl/util/run_loop.hpp
    PRIVATE include/mbgl/util/string.hpp
    PRIVATE include/mbgl/util/timer.hpp
    PRIVATE include/mbgl/util/traits.hpp
    PRIVATE include/mbgl/util/unitbezier.hpp
    PRIVATE include/mbgl/util/util.hpp
    PRIVATE include/mbgl/util/work_request.hpp
    PRIVATE include/mbgl/util/work_task.hpp
    PRIVATE src/mbgl/util/assert.hpp
    PRIVATE src/mbgl/util/async_task.hpp
    PRIVATE src/mbgl/util/channel.hpp
    PRIVATE src/mbgl/util/chrono.cpp
    PRIVATE src/mbgl/util/clip_id.cpp
    PRIVATE src/mbgl/util/clip_id.hpp
    PRIVATE src/mbgl/util/clip_lines.cpp
    PRIVATE src/mbgl/util/clip_lines.hpp
    PRIVATE src/mbgl/util/compression.cpp
    PRIVATE src/mbgl/util/compression.hpp
    PRIVATE src/mbgl/util/constants.cpp
    PRIVATE src/mbgl/util/default_styles.cpp
    PRIVATE src/mbgl/util/dtoa.cpp
    PRIVATE src/mbgl/util/dtoa.hpp
    PRIVATE src/mbgl/util/exclusive.hpp
    PRIVATE src/mbgl/util/geo.cpp
    PRIVATE src/mbgl/util/geometry.hpp
    PRIVATE src/mbgl/util/grid_index.cpp
    PRIVATE src/mbgl/util/grid_index.hpp
    PRIVATE src/mbgl/util/http_header.cpp
    PRIVATE src/mbgl/util/http_header.hpp
    PRIVATE src/mbgl/util/interpolate.hpp
    PRIVATE src/mbgl/util/intersection_tests.cpp
    PRIVATE src/mbgl/util/intersection_tests.hpp
    PRIVATE src/mbgl/util/io.cpp
    PRIVATE src/mbgl/util/io.hpp
    PRIVATE src/mbgl/util/mapbox.cpp
    PRIVATE src/mbgl/util/mapbox.hpp
    PRIVATE src/mbgl/util/mat2.cpp
    PRIVATE src/mbgl/util/mat2.hpp
    PRIVATE src/mbgl/util/mat3.cpp
    PRIVATE src/mbgl/util/mat3.hpp
    PRIVATE src/mbgl/util/mat4.cpp
    PRIVATE src/mbgl/util/mat4.hpp
    PRIVATE src/mbgl/util/math.cpp
    PRIVATE src/mbgl/util/math.hpp
    PRIVATE src/mbgl/util/merge_lines.cpp
    PRIVATE src/mbgl/util/merge_lines.hpp
    PRIVATE src/mbgl/util/premultiply.cpp
    PRIVATE src/mbgl/util/premultiply.hpp
    PRIVATE src/mbgl/util/ptr.hpp
    PRIVATE src/mbgl/util/rapidjson.hpp
    PRIVATE src/mbgl/util/raster.cpp
    PRIVATE src/mbgl/util/raster.hpp
    PRIVATE src/mbgl/util/rect.hpp
    PRIVATE src/mbgl/util/std.hpp
    PRIVATE src/mbgl/util/stopwatch.cpp
    PRIVATE src/mbgl/util/stopwatch.hpp
    PRIVATE src/mbgl/util/thread.hpp
    PRIVATE src/mbgl/util/thread_context.cpp
    PRIVATE src/mbgl/util/thread_context.hpp
    PRIVATE src/mbgl/util/thread_local.hpp
    PRIVATE src/mbgl/util/tile_coordinate.hpp
    PRIVATE src/mbgl/util/tile_cover.cpp
    PRIVATE src/mbgl/util/tile_cover.hpp
    PRIVATE src/mbgl/util/token.hpp
    PRIVATE src/mbgl/util/transition.cpp
    PRIVATE src/mbgl/util/transition.hpp
    PRIVATE src/mbgl/util/url.cpp
    PRIVATE src/mbgl/util/url.hpp
    PRIVATE src/mbgl/util/utf.hpp
    PRIVATE src/mbgl/util/variant.hpp
    PRIVATE src/mbgl/util/version_info.cpp
    PRIVATE src/mbgl/util/work_queue.cpp
    PRIVATE src/mbgl/util/work_queue.hpp
    PRIVATE src/mbgl/util/work_request.cpp
    PRIVATE src/mbgl/util/worker.cpp
    PRIVATE src/mbgl/util/worker.hpp
)

add_dependencies(mbgl-core
    mbgl-version-header
)

target_add_shaders(mbgl-core
    circle
    collisionbox
    debug
    fill
    icon
    line
    linepattern
    linesdfpattern
    outline
    outlinepattern
    pattern
    raster
    sdf
)

target_compile_options(mbgl-core
    PRIVATE -Wno-variadic-macros
    PRIVATE -Wno-unknown-pragmas
    PRIVATE -fPIC
    PRIVATE -fvisibility-inlines-hidden
)

target_include_directories(mbgl-core
    PUBLIC include
    PRIVATE src
    PRIVATE ${CMAKE_BINARY_DIR}/include
    PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/include
)

target_add_mason_package(mbgl-core PUBLIC geometry)
target_add_mason_package(mbgl-core PUBLIC variant)
target_add_mason_package(mbgl-core PRIVATE unique_resource)
target_add_mason_package(mbgl-core PRIVATE rapidjson)
target_add_mason_package(mbgl-core PRIVATE boost)
target_add_mason_package(mbgl-core PRIVATE geojsonvt)
target_add_mason_package(mbgl-core PRIVATE earcut)
target_add_mason_package(mbgl-core PRIVATE protozero)

if(EXISTS ${CMAKE_SOURCE_DIR}/platform/${MBGL_PLATFORM}/core.cmake)
    include(platform/${MBGL_PLATFORM}/core.cmake)
endif()

create_source_groups(mbgl-core)

target_append_xcconfig(mbgl-core)
