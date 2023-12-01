project "MMDFormats"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"
	
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"MikuMikuFormats/Pmx.cpp",
		"MikuMikuFormats/Pmd.cpp",
	}
	
	includedirs {
		"MikuMikuFormats"
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
