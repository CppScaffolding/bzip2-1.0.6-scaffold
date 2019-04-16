-- scaffold geniefile for bzip2-1.0.6

bzip2-1.0.6_script = path.getabsolute(path.getdirectory(_SCRIPT))
bzip2-1.0.6_root = path.join(bzip2-1.0.6_script, "bzip2-1.0.6")

bzip2-1.0.6_includedirs = {
	path.join(bzip2-1.0.6_script, "config"),
	bzip2-1.0.6_root,
}

bzip2-1.0.6_libdirs = {}
bzip2-1.0.6_links = {}
bzip2-1.0.6_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { bzip2-1.0.6_includedirs }
	end,

	_add_defines = function()
		defines { bzip2-1.0.6_defines }
	end,

	_add_libdirs = function()
		libdirs { bzip2-1.0.6_libdirs }
	end,

	_add_external_links = function()
		links { bzip2-1.0.6_links }
	end,

	_add_self_links = function()
		links { "bzip2-1.0.6" }
	end,

	_create_projects = function()

project "bzip2-1.0.6"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		bzip2-1.0.6_includedirs,
	}

	defines {}

	files {
		path.join(bzip2-1.0.6_script, "config", "**.h"),
		path.join(bzip2-1.0.6_root, "**.h"),
		path.join(bzip2-1.0.6_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
