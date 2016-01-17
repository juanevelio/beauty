execute_process(COMMAND "/home/beauty/beauty_ws/build/beauty_arduino/ros_arduino_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/beauty/beauty_ws/build/beauty_arduino/ros_arduino_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
