#!/usr/bin/env bash
# Run this script with the robot tests directory as the argument.
# TODO: Make a way to run a single file or test.

rel_test_dir_path=${1:-.}
abs_test_dir_path="$(cd "$(dirname ${rel_test_dir_path})"; pwd)/$(basename ${rel_test_dir_path})"
docker run --mount type=bind,source=${abs_test_dir_path},target=/tests \
           --mount type=tmpfs,destination=/tmp \
           ancoris/robot-framework-on-selenium-chrome
