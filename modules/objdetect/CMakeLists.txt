set(the_description "Object Detection")

if(DEFINED WINRT AND NOT DEFINED ENABLE_WINRT_MODE_NATIVE)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /ZW")
endif()

ocv_define_module(objdetect opencv_core opencv_imgproc opencv_ml OPTIONAL opencv_highgui WRAP java python)
