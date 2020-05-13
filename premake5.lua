group "Vendor"
project "ImGui"
	kind "StaticLib"
	language "C++"
  
	targetdir ("Build/bin/" .. outputDir .. "/%{prj.name}")
	objdir ("Build/bin-int/" .. outputDir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",
		"imgui_demo.cpp"
	}
  
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	
	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"
	
	
