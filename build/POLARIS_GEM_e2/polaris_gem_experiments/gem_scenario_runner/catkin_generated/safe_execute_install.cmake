execute_process(COMMAND "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
