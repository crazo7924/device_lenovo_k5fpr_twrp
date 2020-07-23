#
# Copyright (C) 2017 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, build/target/product/embedded.mk)

PRODUCT_NAME := omni_k5fpr
PRODUCT_DEVICE := k5fpr
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K4 Note
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BOARD := mt6753
