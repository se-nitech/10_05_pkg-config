FROM opencvcourses/opencv-docker:4.5.1

RUN apt -y update \
    && apt -y install make gdb cppcheck pkg-config
