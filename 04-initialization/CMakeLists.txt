get_filename_component(TARGET_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" TARGET_NAME ${TARGET_NAME})

add_executable(${TARGET_NAME} main.c)
target_link_libraries(${TARGET_NAME} ${CURSES_LIBRARY})
