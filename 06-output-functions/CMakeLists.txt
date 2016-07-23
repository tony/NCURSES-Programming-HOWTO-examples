include_directories(".")

set(TARGET_NAME 06-output-functions)

file (GLOB SOURCES *.c)

add_executable(${TARGET_NAME} ${SOURCES})
target_link_libraries(${TARGET_NAME} ${CURSES_LIBRARY})
install(TARGETS ${TARGET_NAME} RUNTIME DESTINATION ${BIN_DIR})
