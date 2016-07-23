include_directories(".")
file (GLOB example_SOURCES *.c)

add_executable(example ${example_SOURCES})
target_link_libraries(example ${CURSES_LIBRARY})
install(TARGETS example RUNTIME DESTINATION ${BIN_DIR})
