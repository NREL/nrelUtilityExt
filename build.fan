#! /usr/bin/env fan

// Copyright (C) 2018, National Renewable Energy Laboratory
// All Rights Reserved

using build

**
** Build: utilityExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "utilityExt"
    summary = "Missing Axon Utility Functions"
    version = Version("1.1.1")
    meta    = [
                "ext.name":        "utility",
                "ext.icon24":      "fan://frescoRes/img/iconMissing24.png",
                "ext.icon72":      "fan://frescoRes/img/iconMissing72.png",
                "org.name":        "NREL",
                "org.uri":         "https://www.nrel.gov/",
                "proj.name":       "Missing Utilities",
                "proj.uri":        "https://github.com/NREL/utilityExt",
                "license.name":    "BSD-3",
                "skyspark.docExt": "true",
              ]
    depends = ["sys 1.0", "axon 3.0", "ioExt 3.0"]
    resDirs = [`locale/`,
               `lib/`]
    index   =
    [
      "skyarc.ext": "utilityExt",
    ]
  }
}