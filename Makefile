#
# Copyright (C) 2020 Xiaok https://github.com/luxiaok
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for AutoSSH
LUCI_DEPENDS:=+autossh
LUCI_PKGARCH:=all
PKG_VERSION:=1.0.0
PKG_RELEASE:=8
PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Xiaok <luxiaok2008@gmail.com>

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
#
