file(GLOB quantize_c "*.c")

add_library(quantize STATIC ${quantize_c})

target_include_directories(quantize PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})