#!/bin/sh

# 修改版本
NEW_VERSION="$(TZ=Asia/Shanghai date +%y.%m.%d)"
TARGET_FILE="./package/lean/default-settings/files/zzz-default-settings"
sed -i "s/echo 'OPENWRT_RELEASE=\"LEDE .*\"' >> \/usr\/lib\/os-release/echo 'OPENWRT_RELEASE=\"LEDE $NEW_VERSION\"' >> \/usr\/lib\/os-release/" "$TARGET_FILE"
sed -i "s/echo \"DISTRIB_REVISION='.*'\" >> \/etc\/openwrt_release/echo \"DISTRIB_REVISION='$NEW_VERSION'\" >> \/etc\/openwrt_release/" "$TARGET_FILE"

