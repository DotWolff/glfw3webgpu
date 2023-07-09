project "glfw3webgpu"

    kind "StaticLib"

    language "C"

    staticruntime "off"

    files {
        "glfw3webgpu.h",
        "glfw3webgpu.c"
    }

    includedirs {
        "src",
        "%{Includes.GLFW}",
        "%{Includes.WebGPU}"
    }

    links {
        "GLFW"
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"