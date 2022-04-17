# avr-toolchain
This will download and unzip the avr-gcc to a toolchain directory (install.bat) and provide a CMake file with the parameters.

# Install

You should have installed `git` and `cmake`.
Nothing else needs to be installed for this toolchain.

## Install Toolchain

Add the git repos as submodule
```
git submodule add https://github.com/Tropby/avr-toolchain.git dep/avr-toolchain
```

Change to the submodule directory
```
cd dep/avr-toolchain/
```

Run the install batch file
```
./install.bat
```

## Install CMake for AVR

Add the git repos as submodule
```
git submodule add https://github.com/mkleemann/cmake-avr.git dep/cmake-avr
```

## In your project

Include the cmake file in your `CMakeLists.txt`
```
# 
include("dep/avr-toolchain/avr-toolchain.cmake")

# Configuration
include("config.cmake")

# Include AVR GCC 
include("dep/cmake-avr/generic-gcc-avr.cmake")
set(AVR_SIZE_ARGS)
```

Create a `config.cmake` file with the following content and change the parameter to fit your AVR cpu
```
cmake_minimum_required(VERSION 3.0.0)

set(CMAKE_SYSTEM_NAME   Linux           )
set(AVR_OPTIMISATION    s               )

set(AVR_MCU             atmega328p      )
set(AVR_FREQUENCY       16000000UL      )
set(AVR_BAUD            57600           )

set(AVR_UPLOADTOOL      avrdude         )
set(AVR_PROGRAMMER      avrispmkii      )
set(AVR_MCU_AVRDUDE     m328p           )
```

Setup include directories in `c_cpp_properties.json`
```
"includePath": [
  "${workspaceFolder}/dep/avr-toolchain/toolchain/avr/include/**"
 ]
```
```
"browse": {
    "path": [
        "${workspaceFolder}/dep/avr-toolchain/toolchain/avr/include",
    ]
}
```

Set defines to fit your CPU and Baud for VSCode IntelliSense in `c_cpp_properties.json`
```
"defines": [
    "__AVR_ATmega328P__",
    "BAUD=9600"
]
```


