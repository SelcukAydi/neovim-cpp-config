local cmake_status_ok, cmake = pcall(require, "cmake")
if not cmake_status_ok then
    return
end

local path_status_ok, path = pcall(require, "plenary.path")
if not path_status_ok then
    return
end

cmake.setup({
copy_compile_commands = false,
build_dir = tostring(path:new( 'build')),
configure_args = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1' },
})
