utilityExt: Missing SkySpark Utility Functions
==============================================

**utilityExt** is a [SkySpark] extension that provides a variety of missing utility functions for the
[Axon] programming language.

[SkySpark]: http://skyfoundry.com/skyspark/ "SkySpark"
[Axon]: https://skyfoundry.com/doc/docSkySpark/AxonLang "Axon Language"

Build
-----

Build instructions:

1. Create a local clone of this repository on a computer with a working copy of SkySpark.
2. From the command line, change directory to the SkySpark root directory.
3. Execute `bin/fan /path/to/utilityExt/build.fan`.
   * On Linux, you may need to `chmod +x bin/fan` first.
   * Output pod will be `lib/fan/utilityExt.pod` (relative to SkySpark root).
4. Execute `bin/fan docgen` to regenerate documentation.

Build instructions are the same for Windows except paths use backslashes `\` and `fan` becomes
`fan.bat`.
   
Installation
------------

Select a set of installation instructions below that corresponds to how you obtained the
**utilityExt** extension. Following installation, you must enable the *Utility* extension in the
*Exts* tab of the SkySpark *Settings* app within each project that needs access to the functions.

### From Source ###

If you built from source, all that is needed to install the extension is to start (or restart)
SkySpark.

### From GitHub ###

1. Download a `utilityExt.pod` release from GitHub.
2. Copy `utilityExt.pod` into the `lib/fan/` directory of your SkySpark installation.
3. Set ownership permissions correctly on the pod to match the other pods in your SkySpark
   installation (Linux/Mac).
4. From the command line, change directory to the SkySpark root directory.
5. Execute `bin/fan docgen` to regenerate documentation.
   * Optional; the functions will work without this step but the *Help* app won't show any
     function documentation.
   * On Linux, you may need to `chmod +x bin/fan` first.
6. Start (or restart) SkySpark.

Help
----

Function help is available in the SkySpark *Help* app under *utility* or within the help interface
in the *Func* app.

License
-------

At present, these functions are for NREL internal use only. See `LICENSE.md` for details.

