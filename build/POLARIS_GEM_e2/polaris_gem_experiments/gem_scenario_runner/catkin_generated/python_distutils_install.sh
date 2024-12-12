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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sofonias/gem_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sofonias/gem_ws/install/lib/python3/dist-packages:/home/sofonias/gem_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sofonias/gem_ws/build" \
    "/usr/bin/python3" \
    "/home/sofonias/gem_ws/src/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner/setup.py" \
    egg_info --egg-base /home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner \
    build --build-base "/home/sofonias/gem_ws/build/POLARIS_GEM_e2/polaris_gem_experiments/gem_scenario_runner" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/sofonias/gem_ws/install" --install-scripts="/home/sofonias/gem_ws/install/bin"
