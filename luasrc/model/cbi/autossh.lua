model = Map("autossh", translate("AutoSSH"), translate("Automatically restart SSH sessions and tunnels"))
section = model:section(TypedSection, "autossh", translate("AutoSSH Configurations"))
section.anonymous = true --不显示Section名称

enabled = section:option(Flag, "enabled", translate("enabled"));
enabled.optional = false;

ssh = section:option(Value, "ssh", translate("ssh"));
ssh.optional = false;
ssh.rmempty = false;

monitorport = section:option(Value, "monitorport", translate("monitorport"), translate("Specify monitor port"));
monitorport.optional = false;
monitorport.rmempty = false;

gatetime = section:option(Value, "gatetime", translate("gatetime"), translate("Use of -f flag sets this to 0"));
gatetime.optional = false;
gatetime.rmempty = false;

poll = section:option(Value, "poll", translate("poll"), translate("How often to check the connection"));
poll.optional = false;
poll.rmempty = false;

return model