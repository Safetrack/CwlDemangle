#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr 0`

release_script_version="1.0.3"

# Download the release script (from git)
echo "${green}Cloning git repo \"trackunit-ios-podspec-release-script.git\" version ${release_script_version}...${reset}"
current_dir="$(pwd)" && temp_dir="$(mktemp -d)" && \
    git clone git@github.com:Safetrack/trackunit-ios-podspec-release-script.git "${temp_dir}" && \
        cd "${temp_dir}/" && \
            git -c advice.detachedHead=false checkout tags/${release_script_version} && \
                release_script="$(pwd)/release-pod-library.sh" && cd "${current_dir}"

# all is well?
test $? -eq 0 || { echo >&2 "${red}Error cloning directory.${reset}"; exit 1; }

# Do the release
${release_script}