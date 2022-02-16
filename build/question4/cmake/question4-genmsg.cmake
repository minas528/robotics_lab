# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "question4: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(question4_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_custom_target(_question4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "question4" "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(question4
  "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/question4
)

### Generating Module File
_generate_module_cpp(question4
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/question4
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(question4_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(question4_generate_messages question4_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_dependencies(question4_generate_messages_cpp _question4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(question4_gencpp)
add_dependencies(question4_gencpp question4_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS question4_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(question4
  "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/question4
)

### Generating Module File
_generate_module_eus(question4
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/question4
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(question4_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(question4_generate_messages question4_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_dependencies(question4_generate_messages_eus _question4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(question4_geneus)
add_dependencies(question4_geneus question4_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS question4_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(question4
  "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/question4
)

### Generating Module File
_generate_module_lisp(question4
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/question4
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(question4_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(question4_generate_messages question4_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_dependencies(question4_generate_messages_lisp _question4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(question4_genlisp)
add_dependencies(question4_genlisp question4_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS question4_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(question4
  "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/question4
)

### Generating Module File
_generate_module_nodejs(question4
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/question4
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(question4_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(question4_generate_messages question4_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_dependencies(question4_generate_messages_nodejs _question4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(question4_gennodejs)
add_dependencies(question4_gennodejs question4_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS question4_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(question4
  "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/question4
)

### Generating Module File
_generate_module_py(question4
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/question4
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(question4_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(question4_generate_messages question4_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/minas/Documents/class_2021/ros/robotics_lab/src/question4/srv/JointPosition.srv" NAME_WE)
add_dependencies(question4_generate_messages_py _question4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(question4_genpy)
add_dependencies(question4_genpy question4_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS question4_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/question4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/question4
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(question4_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/question4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/question4
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(question4_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/question4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/question4
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(question4_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/question4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/question4
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(question4_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/question4)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/question4\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/question4
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(question4_generate_messages_py std_msgs_generate_messages_py)
endif()
