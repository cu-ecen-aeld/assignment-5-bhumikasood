
##############################################################
#
# LDD PACKAGE
#
##############################################################
# Bhumika Sood

LDD_VERSION = 'd57704257b4717859118a24f3e8966d96e0f0541'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-bhumikasood.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

#define LDD_PKG_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
#endef

#define LDD_PKG_INSTALL_TARGET_CMDS
#	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
#	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
#	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
#	$(INSTALL) -m 0755 -D $(@D)/finder-app/writer $(TARGET_DIR)/usr/bin/writer
#	$(INSTALL) -m 0755 -D $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin/finder.sh
#	$(INSTALL) -m 0755 -D $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/finder-test.sh

#	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
#	$(INSTALL) -m 0755 -D $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
#endef

$(eval $(kernel-module))
$(eval $(generic-package))
