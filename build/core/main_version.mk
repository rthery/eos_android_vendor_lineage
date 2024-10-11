# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ifneq ($(PRODUCT_VERSION_MAINTENANCE), 0)
    PRODUCT_VERSION_OPTIONAL := .$(PRODUCT_VERSION_MAINTENANCE)
endif

# LineageOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.releasetype=$(LINEAGE_BUILDTYPE) \
    ro.lineage.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)$(PRODUCT_VERSION_OPTIONAL) \
    ro.modversion=$(LINEAGE_VERSION) \
    ro.lineagelegal.url=https://lineageos.org/legal \
    ro.elegal.url=https://e.foundation/legal

ifdef CI_PIPELINE_ID
    ADDITIONAL_SYSTEM_PROPERTIES += \
        ro.cm.build.pipeline.id=$(CI_PIPELINE_ID)
endif

ifdef CI_PIPELINE_IID
    ADDITIONAL_SYSTEM_PROPERTIES += \
        ro.cm.build.pipeline.iid=$(CI_PIPELINE_IID)
endif

# LineageOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
