model = Map("autossh", translate("AutoSSH"), translate("Automatically restart SSH sessions and tunnels"))
section = model:section(TypedSection, "autossh", translate("AutoSSH Configurations"))

enabled = section:option(Flag, "enabled", translate("enabled"));
enabled.optional = false;

ssh = section:option(Value, "ssh", translate("ssh"));
ssh.optional = false;
ssh.rmempty = false;

gatetime = section:option(Value, "gatetime", translate("gatetime"));
gatetime.optional = false;
gatetime.rmempty = false;

monitorport = section:option(Value, "monitorport", translate("monitorport"));
monitorport.optional = false;
monitorport.rmempty = false;

poll = section:option(Value, "poll", translate("poll"));
poll.optional = false;
poll.rmempty = false;

return model