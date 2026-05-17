### Building the project on Linux or Mac

1. Install Install all dependencies

```
sudo apt install qt6-base-dev qt6-declarative-dev qt6-tools-dev
sudo apt install libeigen3-dev
sudo apt install libgsl-dev
sudo apt install libboost-all-dev

```

2. Configure the Building

 if Qt is installed system wide
 
```
 cmake -B build 
 
```
 
 else
 
```
 cmake -B build -DCMAKE_PREFIX_PATH= Path to qt
 
```
 
 3. Build

```
  cmake --build build -j${nproc}
  
```

4. Run

```
    ./bin/Linux64/Release/Scientool
```

### Building the project on Windows
1. Install Qt6
In folder C:\Qt\{VERSION}\msvc2022_64\

2. Download and install Eigen
Download and extract in folder C:\libs\eigen

3. GSL (vcpkg recommended)

```
vcpkg install boost:x64-windows

```
4. Configure the build
```
cmake -B build -G "Visual Studio 17 2022"
        -DCMAKE_PREFIX_PATH="C:/Qt/6.6.0/msvc2022_64" 
        -DCMAKE_TOOLCHAIN_FILE="C:/vcpkg/scripts/buildsystems/vcpkg.cmake"
```

5. Build
```
    cmake --build build --config Release
```
6. Run
```
    bin\Windows64\Release\Scientool.exe
```
