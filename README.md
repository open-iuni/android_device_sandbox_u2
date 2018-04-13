TWRP device tree for IUNI U2 on Omnirom 6.0
==============================================


**1. TWRP:**

    mkdir twrp-6.0
    cd twrp-6.0
    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0
    repo sync


**2. Device on device/sandbox/u2:**

    git clone https://github.com/open-iuni/android_device_sandbox_u2.git  -b twrp-6.0 device/sandbox/u2


**3. Kernel on kernel/sandbox/u2:**

    git clone https://github.com/open-iuni/android_kernel_sandbox_u2.git -b LA.BF.1.1.3_rb1.15 kernel/sandbox/u2


**4. Compilation:**

    . build/envsetup.sh
    lunch omni_u2-eng
    make CONFIG_DEBUG_SECTION_MISMATCH=y CONFIG_NO_ERROR_ON_MISMATCH=y -j4 recoveryimage