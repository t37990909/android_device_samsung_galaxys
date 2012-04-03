# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2012 Havlena Petr <havlenapetr@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Emit commands needed for Galaxys during OTA installation
(installing boot image and modem firmware)."""

import os
import common

def FullOTA_Assertions(info):
  devices = ["aries", "galaxys", "GT-I9000", "GT-I9000M", "GT-I9000T"]
  info.script.AssertDevices(devices)

  info.script.UnpackPackageDir("firmware", "/tmp")
  info.script.SetPermissions("/tmp/modem.bin", 0, 0, 0644)

  info.script.UnpackPackageDir("utilities", "/tmp")
  info.script.SetPermissions("/tmp/bml_over_mtd", 0, 0, 0755)
  return True

def FullOTA_GetMkbootimg(info):
  return "device/samsung/galaxys/releasetools/mksecbootimg.py"

def FullOTA_WriteBootimg(info):
  out_path = os.getenv('OUT')
  utils_dir = os.path.join(out_path, 'utilities')

  info.output_zip.write(os.path.join(utils_dir, "bml_over_mtd"), "utilities/bml_over_mtd")

  info.script.UnpackPackageFile("boot.img", "/tmp/boot.img")
  bml_args = ["flash", "boot", "72", "reservoir", "2004", "/tmp/boot.img"]
  info.script.RunProgram("/tmp/bml_over_mtd", bml_args)
  return True
