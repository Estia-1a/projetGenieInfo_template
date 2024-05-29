#!/bin/bash

step=0
# Verify if the project directory is a git repository
if [ ! -d ".git" ]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: Not a git repository\e[0m"
    echo "Please clone the project instead of downloading the zip file"
else
    echo -e "\e[32m✅ Step $step: Git repository found\e[0m"
fi

# Check that the path does not contains accents
if [[ $PWD =~ [éèàê] ]]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: The path contains accents\e[0m"
    echo "Please move the project to a path that does not contain accents"
else
    echo -e "\e[32m✅ Step $step: The path does not contain accents\e[0m"
fi


# Verify that git is installed
if ! command -v git &> /dev/null; then
    step=$step+1
    echo -e "\e[31m❌ Step $step:  Git is not installed\e[0m"
    echo "Please download and install git"
else
    echo -e "\e[32m✅ Step $step: Git is installed\e[0m"
fi

git_user_email=$(git config --global user.email)
if [[ ! $git_user_email =~ ^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+(\.[a-zA-Z]{2,})+$ && $git_user_email != "student@etu.estia.fr" ]]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: Git user not correctly configured\e[0m"
    echo "email: $git_user_email"
    echo "Please configure the user with the correct email using:"
    echo "git config --global user.email \"<email>\""
    echo "where <email> should be either githubid+githandle@users.noreply.github.com or student@etu.estia.fr"
    echo "You can find your primary email address at https://github.com/settings/emails"
else 
    echo -e "\e[32m✅ Step $step: the git user is correctly configured\e[0m"
fi 

if ! command -v cmake &> /dev/null; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: CMake version is not installed\e[0m"
    echo "Please download and install CMake version 3.15 or higher"
else
    cmake_version=$(cmake --version | grep -oE "([0-9]+\.){2}[0-9]+") 
    echo -e "\e[32m✅ Step $step: CMake version $cmake_version is installed\e[0m"
fi

if [ ! -d "C:\MinGW\bin" ]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: MinGW is not installed\e[0m"
    echo "Please download MinGW from https://nuwen.net/files/mingw/mingw-19.0.exe"
    echo "and modify your PATH environment variable to include C:\MinGW\bin"
else
    echo -e "\e[32m✅ Step $step: MinGW is installed\e[0m"
fi

if ! command -v make &> /dev/null; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: Make is not installed\e[0m"
    echo "Please download and install make"
else
    echo -e "\e[32m✅ Step $step: Make is installed\e[0m"
fi

if ! command -v gcc &> /dev/null; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: GCC is not installed\e[0m"
    echo "Please download GCC from https://nuwen.net/files/mingw/mingw-19.0.exe"
    echo "and modify your PATH environment variable to include C:\MinGW\bin"
else 
    echo -e "\e[32m✅ Step $step: GCC is installed\e[0m"
fi

# Check that the estia-image/include is present
if [ ! -d "estia-image/include" ]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: estia-image library not found\e[0m"
    echo "Please clone the estia-image library in the same directory as the project"
else
    echo -e "\e[32m✅ Step $step: estia-image library found\e[0m"
fi

# Check that the getopt/include is present
if [ ! -d "getopt/include" ]; then
    step=$step+1
    echo -e "\e[31m❌ Step $step: getopt library not found\e[0m"
    echo "Please clone the getopt library in the same directory as the project"
else
    echo -e "\e[32m✅ Step $step: getopt library found\e[0m"
fi


if ! cmake -B build -S . &> /dev/null; then
    step=$step+1
    echo -e "\e[31m❌ Step $step0: CMake dry run failed\e[0m"
    echo "Please check the CMakeLists.txt file for any issues"
else 
    echo -e "\e[32m✅ Step $step0: CMake dry run passed\e[0m"
fi

