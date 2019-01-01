# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "begginer_tutorials: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ibegginer_tutorials:/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(begginer_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_custom_target(_begginer_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "begginer_tutorials" "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(begginer_tutorials
  "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
)

### Generating Services

### Generating Module File
_generate_module_cpp(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(begginer_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_cpp _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_gencpp)
add_dependencies(begginer_tutorials_gencpp begginer_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(begginer_tutorials
  "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begginer_tutorials
)

### Generating Services

### Generating Module File
_generate_module_eus(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(begginer_tutorials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_eus _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_geneus)
add_dependencies(begginer_tutorials_geneus begginer_tutorials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(begginer_tutorials
  "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
)

### Generating Services

### Generating Module File
_generate_module_lisp(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(begginer_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_lisp _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_genlisp)
add_dependencies(begginer_tutorials_genlisp begginer_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(begginer_tutorials
  "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begginer_tutorials
)

### Generating Services

### Generating Module File
_generate_module_nodejs(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(begginer_tutorials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_nodejs _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_gennodejs)
add_dependencies(begginer_tutorials_gennodejs begginer_tutorials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(begginer_tutorials
  "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
)

### Generating Services

### Generating Module File
_generate_module_py(begginer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(begginer_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(begginer_tutorials_generate_messages begginer_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/osboxes/workspace/mhlmt_git/catkin_ws/src/begginer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begginer_tutorials_generate_messages_py _begginer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begginer_tutorials_genpy)
add_dependencies(begginer_tutorials_genpy begginer_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begginer_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(begginer_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(begginer_tutorials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(begginer_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begginer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(begginer_tutorials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begginer_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(begginer_tutorials_generate_messages_py std_msgs_generate_messages_py)
endif()
