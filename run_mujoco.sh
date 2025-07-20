#!/bin/bash
set -e

XVFB_DISPLAY_NUM=1
export DISPLAY=:$XVFB_DISPLAY_NUM

# Start Xvfb
Xvfb :$XVFB_DISPLAY_NUM -screen 0 1280x800x24 &
XVFB_PID=$!

# Wait a moment for Xvfb to start
sleep 1

# Start window manager
fluxbox &
FLUXBOX_PID=$!

# Start VNC server
x11vnc -display :$XVFB_DISPLAY_NUM -passwd yourpassword -forever  &
VNC_PID=$!

# Wait for everything to spin up
sleep 2

# Trap SIGINT/SIGTERM to kill background jobs
cleanup() {
    echo "Cleaning up background processes..."
    kill $VNC_PID $FLUXBOX_PID $XVFB_PID 2>/dev/null || true
    wait
}
trap cleanup EXIT

# Run mujoco simulate (replace this with your app)
./mujoco/build/bin/simulate ./mujoco/test/benchmark/testdata/humanoid.xml

# Script ends here, cleanup will be triggered by 'trap'
