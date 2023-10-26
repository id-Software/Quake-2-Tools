workspace "RionTools"
   configurations { "Debug", "Release" }
   
   includedirs { "../common" }
   files {
      "../common/**.h", 
      "../common/**.c",
   }

   filter "system:windows"
      defines {"WIN32"}
   
   links { 
      "opengl32", 
      "glu32",   
   }
   filter "system:linux"
      links {
         "m"
      }
   
   linkoptions { "/FORCE:MULTIPLE" }
   defines { "_CRT_SECURE_NO_WARNINGS" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
   

project "bspinfo3"
   kind "ConsoleApp"
   language "C"
   cdialect "C89"
   targetdir "bin/%{cfg.buildcfg}"

   files {
      "bspinfo3/**.h", 
      "bspinfo3/**.c" 
   }

project "qbsp3"
   kind "ConsoleApp"
   language "C"
   cdialect "C89"
   targetdir "bin/%{cfg.buildcfg}"

   files { 
      "qbsp3/**.h", 
      "qbsp3/**.c" 
   }

   filter "system:windows"
      removefiles {
         "qbsp3/gldraw.c"
      }

project "qrad3"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.buildcfg}"

   files {
      "qrad3/**.h", 
      "qrad3/**.c" 
   }

project "qvis3"
   kind "ConsoleApp"
   language "C"
   targetdir "bin/%{cfg.buildcfg}"

   files { 
      "qvis3/**.h", 
      "qvis3/**.c" 
   }
   removefiles {
      "../common/polylib.c"
   }

