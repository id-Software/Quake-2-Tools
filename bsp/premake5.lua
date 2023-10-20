workspace "RionTools"
   configurations { "Debug", "Release" }
   includedirs { "../freeglut300/include", "../common" }
   libdirs { "../freeglut300/lib" }
   links { "opengl32", "freeglut" }
   linkoptions { "/FORCE:MULTIPLE" }
   defines { "_CRT_SECURE_NO_WARNINGS" }

project "qcommon"
   files { "../common/**.h", "../common/**.c" }
   kind "StaticLib"
   language "C"
   cdialect "C89"

project "bspinfo3"
   kind "ConsoleApp"
   language "C"
   cdialect "C89"
   targetdir "bin/%{cfg.buildcfg}"

   links { "qcommon" }

   files { "bspinfo3/**.h", "bspinfo3/**.c" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"


project "qbsp3"
   kind "ConsoleApp"
   language "C"
   cdialect "C89"
   targetdir "bin/%{cfg.buildcfg}"

   links { "qcommon" }

   files { "qbsp3/**.h", "qbsp3/**.c" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

project "qrad3"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.buildcfg}"

   links { "qcommon" }

   files { "qrad3/**.h", "qrad3/**.c" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"

project "qvis3"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.buildcfg}"

   links { "qcommon" }

   files { "qvis3/**.h", "qvis3/**.c" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"