# Project Genie Info

Simple project that
- [x] open an image
- [x] compute its size
- [ ] Compute the average red components
- [x] Save a image

## Install (without VS Code)

### With CMAKE
- You need cmake 3.20 a least
#### Make the estia-image lib if you dont have it
- cmake -S estia-image -B estia-image/build
- cmake --build estia-image/build
- cmake --install estia-image/build
#### Make Freud
- cmake -B build
- cmake --build build
- cmake --install build

### Without CMake

- Get the libestia-image.a (or .lib) and estia-image.h
- Put them in a folder estia-image/lib and estia-image/include at the root of the project (same level as your src directory)

gcc -c src/main.c -I estia-image/include -o main.o
gcc main.o -Lestia-image/lib -lestia-image -o freud

## Install (with VS Code)

### With CMAKE and VS Code
#### Install required extensions
- Go to "Extensions" view (CTRL + Shift + X)
- Use search bar to find and install GitHub Pull Requests and Issues
![github_pull_install](https://user-images.githubusercontent.com/16139930/168248657-8267ab92-1e1e-4642-9406-2f02fcc6a6ec.PNG)
- Use search bar to find and install CMake and CMake tool support for VS Code
![cmake_install](https://user-images.githubusercontent.com/16139930/168254129-b86fe4e7-2c5f-4700-a503-41de653d0199.PNG)
![cmake_tool_install](https://user-images.githubusercontent.com/16139930/168254203-dff13fb0-8b27-45ba-889c-482826f0ae47.PNG)

#### Connect your GitHub Account
- Go to "GitHub" view
- Click on "Sign in"

![github_signin](https://user-images.githubusercontent.com/16139930/168287171-6991bcf8-392f-46ee-8f3a-4c9b7c6cf46c.png)

- Allow GitHub Pull Requests and Issues extension

![github_signin-2](https://user-images.githubusercontent.com/16139930/168287186-2d974838-f3ee-4db8-a9cb-ffdfec8841a0.png)

- In browser, click on "choisir une application", then "ouvrir le lien"

![github_signin-3](https://user-images.githubusercontent.com/16139930/168287190-3e270d13-c791-475f-881e-ba0f690580d0.png)
![github_signin-4](https://user-images.githubusercontent.com/16139930/168287902-ea2c1f46-ce9b-410d-9724-614188ecc848.png)

- Click on "Open" in the next pop-up

 ![github_signin-5](https://user-images.githubusercontent.com/16139930/168288528-be08caad-12e9-45a0-8640-450214ae2b9c.png)

- In VS Code, click on "yes" button in the bottom right pop-up

![github_signin-6](https://user-images.githubusercontent.com/16139930/168288999-7552057a-a770-46d2-aff7-5772abbc0488.png)

- If you see "You are signed in now and can close this page." in your browser, you have successfully connected your GitHub account to VS Code.

#### Clone project with VS Code
- Open command palette (CTRL + SHIFT + P)
- Type "clone" and select "GIT: clone"
- Select "Clone from Github"
- Select "Estia-1a/projetGenieInfo_public" project
- Select a location for the project
WARNING: No accents in your folder names! Otherwise, your project will not compile.
- Select "open" to: Would you like to open the cloned repository?
- Select "yes" to: Do you trust the authors?

#### Install with CMake and VS Code

- Open command palette (CTRL + SHIFT + P)
- Type CMake and choose : "CMake: Configure"
- Choose : GCC 11.2.0 [...]
- See bottom right pop-up messages
- A pop-up indicates that CMakeLists.txt was not found. Select "Locate"

![cmake_list_locate](https://user-images.githubusercontent.com/16139930/168253466-41e99ef3-b403-4082-bb28-c2b63fef4ebc.PNG)

- Select "Browse for CMakeLists.txt"
- Open "src" and select "CMakeLists.txt"
- Click on "Load"
- Build your project: click on "build" button of the bottom blue bar (see bellow)

![build_project](https://user-images.githubusercontent.com/16139930/168253599-978e64ab-c826-49ef-90e4-14e35b41fbbb.png)

- You now have a build folder with a MakeFile:

![project_arbo_wbuild](https://user-images.githubusercontent.com/16139930/168253746-613df728-840f-4d2d-b49f-b675e5d523b1.PNG)

- Run your code:

![run_code](https://user-images.githubusercontent.com/16139930/168266156-eaed4cd2-0fe7-4bed-81d6-afd3b7485dee.png)
