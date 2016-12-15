set(the_description "2D Features Framework")

if(DEFINED WINRT AND NOT DEFINED ENABLE_WINRT_MODE_NATIVE)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /ZW")
endif()

ocv_define_module(features2d opencv_imgproc opencv_ml opencv_flann OPTIONAL opencv_highgui WRAP java python)
