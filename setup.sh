#!/bin/bash
set -e

#make sure old trees are gone
rm -rf device/realme/ferrari
rm -rf device/oneplus/wly
rm -rf device/oneplus/sm8450-common
rm -rf vendor/realme/ferrari
rm -rf vendor/oneplus/wly
rm -rf vendor/oneplus/sm8450-common
rm -rf kernel/oneplus/sm8450
rm -rf kernel/oneplus/sm8450-modules
rm -rf kernel/oneplus/sm8450-devicetrees
rm -rf hardware/oplus
rm -rf hardware/qcom-caf/sm8450/display

#device-tree
git clone https://github.com/pjgowtham/android_device_realme_ferrari.git -b lineage-23.0 device/realme/ferrari
git clone https://github.com/pjgowtham/android_device_oneplus_wly.git -b lineage-23.0 device/oneplus/wly
git clone https://github.com/pjgowtham/android_device_oneplus_sm8450-common.git -b lineage-23.0 device/oneplus/sm8450-common

#vendor
git clone https://gitlab.com/Machad3x/proprietary_vendor_realme_ferrari.git -b lineage-23.0 vendor/realme/ferrari
git clone https://gitlab.com/Machad3x/proprietary_vendor_oneplus_wly.git -b lineage-23.0 vendor/oneplus/wly
git clone https://gitlab.com/Machad3x/proprietary_vendor_oneplus_sm8450-common.git -b lineage-23.0 vendor/oneplus/sm8450-common

#kernel
git clone https://github.com/pjgowtham/android_kernel_oneplus_sm8450.git -b lineage-23.1 kernel/oneplus/sm8450
git clone https://github.com/pjgowtham/android_kernel_oneplus_sm8450-modules.git -b lineage-23.1 kernel/oneplus/sm8450-modules
git clone https://github.com/pjgowtham/android_kernel_oneplus_sm8450-devicetrees.git -b lineage-23.0 kernel/oneplus/sm8450-devicetrees

#hardware
git clone https://github.com/pjgowtham/android_hardware_oplus.git -b lineage-23.0 hardware/oplus
 
#fingerprint fix
git clone https://github.com/WLYxFERRARI-Dev/android_hardware_qcom-caf_sm8450_display.git -b lineage-23.1 hardware/qcom-caf/sm8450/display
