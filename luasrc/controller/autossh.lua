-- Copyright 2008 Steven Barth <steven@midlink.org>
-- Copyright 2008 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.autossh", package.seeall)

function index()
    entry( {"admin", "services", "autossh"}, cbi("autossh"), _("AutoSSH"), 1)
    entry({"admin","services","autossh","status"},call("autossh_status")).leaf = true
end

function autossh_status()
    local e = {}
    e.running = luci.sys.call("pgrep autossh >/dev/null")==0
    luci.http.prepare_content("application/json")
    luci.http.write_json(e)
end
