# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rospb_pin_write: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irospb_pin_write:/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rospb_pin_write_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_custom_target(_rospb_pin_write_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rospb_pin_write" "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rospb_pin_write
  "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospb_pin_write
)

### Generating Services

### Generating Module File
_generate_module_cpp(rospb_pin_write
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospb_pin_write
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rospb_pin_write_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rospb_pin_write_generate_messages rospb_pin_write_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_dependencies(rospb_pin_write_generate_messages_cpp _rospb_pin_write_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospb_pin_write_gencpp)
add_dependencies(rospb_pin_write_gencpp rospb_pin_write_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospb_pin_write_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rospb_pin_write
  "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospb_pin_write
)

### Generating Services

### Generating Module File
_generate_module_eus(rospb_pin_write
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospb_pin_write
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rospb_pin_write_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rospb_pin_write_generate_messages rospb_pin_write_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_dependencies(rospb_pin_write_generate_messages_eus _rospb_pin_write_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospb_pin_write_geneus)
add_dependencies(rospb_pin_write_geneus rospb_pin_write_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospb_pin_write_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rospb_pin_write
  "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospb_pin_write
)

### Generating Services

### Generating Module File
_generate_module_lisp(rospb_pin_write
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospb_pin_write
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rospb_pin_write_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rospb_pin_write_generate_messages rospb_pin_write_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_dependencies(rospb_pin_write_generate_messages_lisp _rospb_pin_write_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospb_pin_write_genlisp)
add_dependencies(rospb_pin_write_genlisp rospb_pin_write_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospb_pin_write_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rospb_pin_write
  "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospb_pin_write
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rospb_pin_write
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospb_pin_write
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rospb_pin_write_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rospb_pin_write_generate_messages rospb_pin_write_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_dependencies(rospb_pin_write_generate_messages_nodejs _rospb_pin_write_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospb_pin_write_gennodejs)
add_dependencies(rospb_pin_write_gennodejs rospb_pin_write_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospb_pin_write_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rospb_pin_write
  "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospb_pin_write
)

### Generating Services

### Generating Module File
_generate_module_py(rospb_pin_write
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospb_pin_write
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rospb_pin_write_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rospb_pin_write_generate_messages rospb_pin_write_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROSPB/rospb_ws/src/rospb_pin_write/msg/Pots.msg" NAME_WE)
add_dependencies(rospb_pin_write_generate_messages_py _rospb_pin_write_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospb_pin_write_genpy)
add_dependencies(rospb_pin_write_genpy rospb_pin_write_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospb_pin_write_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospb_pin_write)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospb_pin_write
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rospb_pin_write_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rospb_pin_write_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospb_pin_write)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospb_pin_write
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rospb_pin_write_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rospb_pin_write_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospb_pin_write)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospb_pin_write
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rospb_pin_write_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rospb_pin_write_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospb_pin_write)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospb_pin_write
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rospb_pin_write_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rospb_pin_write_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospb_pin_write)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospb_pin_write\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospb_pin_write
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rospb_pin_write_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rospb_pin_write_generate_messages_py geometry_msgs_generate_messages_py)
endif()
