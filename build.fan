#! /usr/bin/env fan

// Copyright (C) 2018, National Renewable Energy Laboratory
// All Rights Reserved

using build

**
** Build: nrelUtilityExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "nrelUtilityExt"
    summary = "Missing Axon Utility Functions"
    version = Version("1.1.3")
    meta    = [
                "ext.name":        "nrelUtility",
                "ext.icon24":      "fan://frescoRes/img/iconMissing24.png",
                "ext.icon72":      "fan://frescoRes/img/iconMissing72.png",
                "org.name":        "NREL",
                "org.uri":         "https://www.nrel.gov/",
                "proj.name":       "NREL Utility Extension",
                "proj.uri":        "https://github.com/NREL/nrelUtilityExt",
                "license.name":    "BSD-3",
                "skyspark.docExt": "true",
              ]
    depends = ["sys 1.0", "axon 3.0", "ioExt 3.0"]
    resDirs = [`locale/`,
               `lib/`]
    index   =
    [
      "skyarc.ext": "nrelUtilityExt",
    ]
  }
  
  // To publish to StackHub, use: bin/fan /path/to/build.fan publish 
  // For more information, see: https://skyfoundry.com/doc/stackhub/index#publishing
  
  @Target { help = "Publish to stackhub.org " }
  Void publish() { stackhub::PublishTask(this).run }
}