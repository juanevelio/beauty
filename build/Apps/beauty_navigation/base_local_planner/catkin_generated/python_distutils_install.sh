#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/beauty/beauty_ws/src/Apps/beauty_navigation/base_local_planner"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/beauty/beauty_ws/install/lib/python2.7/dist-packages:/home/beauty/beauty_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/beauty/beauty_ws/build" \
    "/usr/bin/python" \
    "/home/beauty/beauty_ws/src/Apps/beauty_navigation/base_local_planner/setup.py" \
    build --build-base "/home/beauty/beauty_ws/build/Apps/beauty_navigation/base_local_planner" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/beauty/beauty_ws/install" --install-scripts="/home/beauty/beauty_ws/install/bin"
