require('telescope').load_extension('dap')

local dap = require('dap')
dap.adapters.go = {type = 'executable', command = 'node', args = {os.getenv('HOME') .. '/work/tools/vscode-go/dist/debugAdapter.js'}}
dap.configurations.go = {
    {
        type = 'go',
        name = 'Debug',
        request = 'launch',
        showLog = false,
        program = "${file}",
        dlvToolPath = vim.fn.exepath('/home/sbiswal/work/.go-path/go/bin/dlv') -- Adjust to where delve is installed
    }
}

-- local dap = require "dap"
-- dap.adapters.go = function(callback, config)
--     local handle
--     local pid_or_err
--     local port = 38697
--     handle, pid_or_err = vim.loop.spawn("dlv", {args = {"dap", "-l", "127.0.0.1:" .. port}, detached = true}, function(code)
--         handle:close()
--         print("Delve exited with exit code: " .. code)
--     end)
--     ----should we wait for delve to start???
--     -- vim.defer_fn(
--     -- function()
--     -- dap.repl.open()
--     -- callback({type = "server", host = "127.0.0.1", port = port})
--     -- end,
--     -- 100)
--     dap.repl.open()
--     callback({type = "server", host = "127.0.0.1", port = port})
-- end
-- -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
-- dap.configurations.go = {{type = "go", name = "Debug", request = "launch", program = "${file}"}}
