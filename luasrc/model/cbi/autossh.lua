-- Copyright 2020 Xiaok https://github.com/luxiaok
-- Licensed to the public under the Apache License 2.0.

model = Map("autossh", translate("<a href='javascript:alert(" .. '"LuCI support for AutoSSH\\nPowered by XK-Studio"' ..  ");'>AutoSSH</a>"), translate("Automatically restart SSH sessions and tunnels"))

model:section(SimpleSection).template  = "autossh/status"

section = model:section(TypedSection, "autossh", translate("AutoSSH Configurations"))
section.anonymous = true --不显示Section名称

enabled = section:option(Flag, "enabled", translate("Enabled"));
enabled.optional = false;

ssh = section:option(Value, "ssh", translate("SSH Command"));
ssh.optional = false;
ssh.rmempty = false;

monitorport = section:option(Value, "monitorport", translate("Monitor Port"), translate("Specify monitor port"));
monitorport.optional = false;
monitorport.rmempty = false;

gatetime = section:option(Value, "gatetime", translate("Gate Time"), translate("Use of -f flag sets this to 0"));
gatetime.optional = false;
gatetime.rmempty = false;

poll = section:option(Value, "poll", translate("Poll"), translate("How often to check the connection"));
poll.optional = false;
poll.rmempty = false;

return model