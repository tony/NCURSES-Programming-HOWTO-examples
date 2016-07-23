include_directories(".")

set(TARGET_NAME 04-example)

file (GLOB SOURCES *.c)

add_executable(${TARGET_NAME} ${SOURCES})
target_link_libraries(${TARGET_NAME} ${CURSES_LIBRARY})
