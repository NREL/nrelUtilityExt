#! /usr/bin/env fan

// Copyright (C) 2022, Alliance for Sustainable Energy, LLC
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
    summary = "Missing Axon utility functions"
    version = Version("1.1.4")
    meta    = [
                "ext.name":        "nrelUtility",
                "ext.depends":     "io",
                "ext.icon":        "paperAirplane",
                "org.name":        "NREL",
                "org.uri":         "https://www.nrel.gov/",
                "proj.name":       "NREL Utility Extension",
                "proj.uri":        "https://github.com/NREL/nrelUtilityExt",
                "license.name":    "BSD-3",
                "skyspark.docExt": "true",
              ]
    resDirs = [`lib/`, `locale/`]
    index   = ["skyarc.ext": "nrelUtilityExt"]
  }
  
  // To publish to StackHub, use: bin/fan /path/to/build.fan publish 
  // For more information, see: https://skyfoundry.com/doc/stackhub/index#publishing
  
  @Target { help = "Publish to stackhub.org " }
  Void publish() { stackhub::PublishTask(this).run }
}