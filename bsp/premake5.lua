workspace "RionTools"
   configurations { "Debug", "Release" }
   defines {"WIN32"}
   includedirs { "../freeglut/include", "../common" }
   libdirs { "../freeglut/lib" }
   links { 
      "wsock32", 
      "opengl32", 
      "freeglut",  
      "glu32",  
      "kernel32", 
      "user32",  
      "gdi32",  
      "winspool",  
      "comdlg32",  
      "advapi32",  
      "shell32", 
      "ole32",  
      "oleaut32",  
      "uuid",  
      "odbc32",  
      "odbccp32", 
    }
   linkoptions { "/FORCE:MULTIPLE" }
   defines { "_CRT_SECURE_NO_WARNINGS" }

project "bspinfo3"
   kind "ConsoleApp"
   language "C"
   cdialect "C89"
   targetdir "bin/%{cfg.buildcfg}"

   files {
      "../common/**.h", 
      "../common/**.c",
      "bspinfo3/**.h", 
      "bspinfo3/**.c" 
   }

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

   files { 
      "../common/**.h", 
      "../common/**.c",
      "qbsp3/**.h", 
      "qbsp3/**.c" 
   }
   removefiles {
      "qbsp3/gldraw.c"
   }

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

   files {
      "../common/**.h", 
      "../common/**.c", 
      "qrad3/**.h", 
      "qrad3/**.c" 
   }

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

   files { 
      "../common/**.h", 
      "../common/**.c",
      "qvis3/**.h", 
      "qvis3/**.c" 
   }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"