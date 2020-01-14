-- Copyright 2020 XK-Studio
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.autossh", package.seeall)

function index()
    entry({"admin", "services", "autossh"}, cbi("autossh"), _("AutoSSH"), 1)
    entry({"admin","services","autossh","status"}, call("autossh_status")).leaf = true
end

function autossh_status()
    local status = {}
    status.running = luci.sys.call("pgrep autossh >/dev/null")==0
    luci.http.prepare_content("application/json")
    luci.http.write_json(status)
end
