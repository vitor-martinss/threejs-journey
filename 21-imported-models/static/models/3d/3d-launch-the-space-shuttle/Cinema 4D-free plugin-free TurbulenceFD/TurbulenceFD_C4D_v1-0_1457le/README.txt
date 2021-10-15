TurbulenceFD for CINEMA 4D


Installing the plugin
---------------------

On Windows:

    CINEMA 4D R15 through R19:
        Extract the TurbulenceFD folder from the .zip file that you downloaded anywhere on your machine.
        Move it to the plugins sub-folder of your CINEMA 4D application.
        That's usually C:\Program Files\MAXON\CINEMA 4D R1X\plugins

    CINEMA 4D R20 and newer:
        Extract the TurbulenceFD folder from the .zip file that you downloaded anywhere on your machine.
        In CINEMA 4D open Edit/Preferences/Plugins and add the extracted folder to the Search Paths list.

    Then restart CINEMA 4D.

On MacOS:

    CINEMA 4D R15 through R19:
        Double-click the .dmg file that you downloaded to open its contents in a Finder window.
        Then copy the TurbulenceFD folder from that window to the plugins sub-folder of your CINEMA 4D application.
        That's usually /Applications/MAXON/CINEMA 4D R1X/plugins

    CINEMA 4D R20 and newer:
        Double-click the .dmg file that you downloaded to open its contents in a Finder window.
        Then copy the TurbulenceFD folder from that window to anywhere on your machine, like the /Application folder.
        In CINEMA 4D open Edit/Preferences/Plugins and add the copied folder to the Search Paths list.

    Then restart CINEMA 4D.


Learning to use TurbulenceFD
----------------------------

The example scenes contained in the plugin package are a good place to start experimenting.

After installing the plugin select Plugins/TurbulenceFD/TurbulenceFD in CINEMA 4D or go to
http://help.jawset.com/en/c4d
to open the online documentation.

Tutorial videos and other training resources can be found at
http://jawset.com/learn


Support
-------

If you have any questions, suggestions or problems, please send an e-mail to
support@jawset.com
or visit the forum at
http://jawset.com/forum


CHANGELOG
---------


v1.0 Build 1456 (2020-04-29)

* C4D: Added support for S22


v1.0 Build 1455 (2020-04-16)

* C4D: Added option to disable cache distribution via Team Render.


v1.0 Build 1454 (2020-03-12)

* C4D: Fixed crash when cache folder contains unaccessible files.


v1.0 Build 1453 (2019-12-12)

* C4D R21, Mac: Fixed crash in curve editor


v1.0 Build 1451 (2019-10-04)

* C4D: API: added tfd::api::load_libary_via_host().


v1.0 Build 1449 (2019-09-17)

* C4D, Windows: Fixed: R21 plugin not loading on older CPUs due to AVX dependency.


v1.0 Build 1448 (2019-09-10)

* C4D: Added support for R21


v1.0 Build 1447 (2019-08-02)

* BCF2VDB: Added Mac build


v1.0 Build 1445 (2019-05-31)

* BCF2VDB: Added --split-velocity option.
* C4D: Removed workaround for CUDA conflict with Redshift. Latest Redshift version required.


v1.0 Build 1443 (2019-03-08)

* (LW) MacOS: fixed hang in dialog popups.


v1.0 Build 1441 (2019-02-02)

* (C4D) GetFluidData: if selected channel is not in cache, give 0.0 result io. error.
* (C4D) (MacOS) Prevent crash during startup when VRay plugin is installed.


v1.0 Build 1439 (2018-10-01)

* Support for Nvidia Turing GPUs.


v1.0 Build 1437 (2018-09-04)

* (C4D) Added support for C4D R20.
* (C4D) Removed support for C4D R14.


v1.0 Build 1436 (2018-05-15)

* Windows: 1435 was missing libomp.dll.


v1.0 Build 1435 (2017-02-20)

* (C4D) Added support for RealFlow rigid and elastoc particle emitters.
* Removed obsolete cache compression option.
* Changed default value for Emitter/Fill Object to false.
* Log errors to C4D Console in addition to log file.


v1.0 Build 1432 (2017-12-06)

* (C4D) Added support for RealFlow fluid particle emitters.


v1.0 Build 1430 (2017-07-24)

* (MacOS) (C4D) Fixed issue that prevented TFD API exports to load in 3rd party tools.


v1.0 Build 1429 (2017-07-19)

* Fixed a hang on shutdown occurring on some setups with other plugins using CUDA.


v1.0 Build 1428 (2017-07-11)

* (MacOS) (C4D) Fixed issue that could cause the plugin to not load correctly.


v1.0 Build 1427 (2017-06-16)

* (MacOS) (LW) dylib did not export symbol for standalone API.


v1.0 Build 1426 (2017-05-12)

* (MacOS) Upgraded to CUDA 8 iot. support Pascal GPUs. Requires MacOS 10.11 or newer.


v1.0 Build 1425 (2017-03-26)

* (bcf2vdb) Added --base-name option.


v1.0 Build 1424 (2017-03-26)

* (bcf2vdb) Fixed: 1423 broke export of multiple channels.


v1.0 Build 1423 (2017-03-25)

* Added --parallel-jobs option to bcf2vdb.


v1.0 Build 1422 (2017-03-23)

* Added bcf2vdb command line utility.


v1.0 Build 1420 (2017-02-02)

* fixed Bug 2: (C4D) (Xpresso) PFluid node was broken.


v1.0 Build 1419 (2016-10-10)

* fixed: shorter timeout for update checks and don't repeat on failure


v1.0 Build 1418 (2016-09-16)

* added support for Nvidia Pascal GPUs


v1.0 Build 1417 (2016-07-07)

* (C4D) work around C4D rounding issue on animated integers for Rendering/Frame Offset and Frame Step


v1.0 Build 1416 (2016-07-02)

* (LW) added support for Lightwave 2017


v1.0 Build 1415 (2016-05-26)

* fixed Bug 86: (LW) (OSX) crashes when installing plugin inside of lightwave 2015


v1.0 Build 1414 (2016-05-09)

* fixed Bug 81: (LW) Crash when multiscatter processes more than one container
* fixed Bug 82: (LW) Cache path is absolute after loading a scene with RTCD checked


v1.0 Build 1412 (2016-05-05)

* fixed Bug 78: (C4D) TR/NET Render clients using incorrect cache path for server request


v1.0 Build 1411 (2016-05-01)

* fixed Bug 49: OSX: sporadic crash during background sim/render
* fixed Bug 74: (C4D) GetFluidData reads non-zero values outside of the container


v1.0 Build 1407 (2016-04-26)

* fixed Bug 63: (C4D) Relative path use for simulation caches
* fixed Bug 71: Cache not overwriting random frames
* fixed Bug 73: (LW) Cache path ignored if RTCD active and cache drive differs from CD drive


v1.0 Build 1405 (2016-04-04)

* fixed Bug 54: Licensed version activates as Learning Edition
* fixed Bug 56/60: (C4D) keyboard shortcuts not working


v1.0 Build 1404 (2016-03-10)

* fixed Bug 44/51: C4D hangs on Cache build
* fixed Bug 52: (C4D) Save Project with Assets copies Autosave.c4d into destination folder


v1.0 Build 1403 (2016-03-03)

* fixed Bug 37: Export voxel size and grid offset in standalone API
* fixed Bug 38: Crash in tfd::TFDFluidContainer::get_world_to_voxel()
* fixed Bug 41: (C4D) TeamRender slave results are blank


v1.0 Build 1401 (2016-01-11)

* fixed Bug 11 - Crash using Team Render Server
* fixed Bug 19 - Crash when closing C4D while simulation is running
* fixed Bug 21 - Crash on click on the map spline in smoke shader
* fixed Bug 27 - Hang during shutdown if render preview popup is open
* fixed Bug 29 - Crash in tfd::ChannelContainer c'tor with LW build
* fixed Bug 31 - Hang up/crash on scrubbing
* fixed Bug 33 - Crash when starting IPR or Rendering with Arnold Renderer


v1.0 Build 1400 (2015-12-22)

* Windows: fixed: TFD caused DPI awareness to be enabled, disabling Windows' fallback UI scaling
* fixed: locking non-existing cache did not create lock
* fixed: cached physical time was incorrect
* resolved several issues during shutdown
* updated to CUDA 7.5 - may require graphics driver update, OSX: requires 10.9 or newer


v1.0 Build 1399 (2015-10-06)

* C4D: fixed: shadow flag on light exclusion entry for TFD container was ignored
* C4D: fixed: Xpresso nodes did not handle Time Scale correctly
* C4D: fixed: crash during startup in R14


v1.0 Build 1398 (2015-08-26)

* C4D: fixed: crash in Simulation Dialog
* API: added object space scale parameter and separate shading calls for fire and smoke
* Windows: fixed: cache files were opened in exclusive read mode, preventing concurrent use of cache files


v1.0 Build 1391 (2015-03-04)

* added host-independent API
* C4D: added get_cache_directory() to lib_tfd
* C4D: added get_shader_paraameters() to lib_tfd
* Mac: fixed: crash on shutdown on some systems


v1.0 Build 1383 (2014-12-22)

* C4D: fixed crash on exit on some systems


v1.0 Build 1382 (2014-12-21)

* LW: fixed: crash in LW 2015 at the end of multi-scatter pre-pass
* LW: fixed: multi-scatter hangs depending on scene illumination settinsg


v1.0 Build 1380 (2014-11-20)

* fixed: simulation memory cache growing unboundedly if bottlenecked by disk storage


v1.0 Build 1379 (2014-11-12)

* fixed: GPU simulation issue on some systems/drivers


v1.0 Build 1377 (2014-11-07)

* C4D: fixed: render performance issue added in 1376


v1.0 Build 1376 (2014-11-05)

* fixed: potential race condition on concurrent sim cache access
* fixed: Mac: spurious OpenGL related hang/crash
* fixed: spurious crash at the end of a simulation job
* LW: Windows 8.1: fixed: emitter related crash
* LW: fixed: hanging sim with some degenerate polygons on emitter geometry
* LW: added velocity scale emitter parameter to compensate for inconsistent particle velocities


v1.0 Build 1372 (2014-09-24)

* fixed: sim often aborted when using fuel masking since 1371


v1.0 Build 1371 (2014-09-22)

* support for Nvidia Maxwell 2 devices
* LW: Mac: added floating license activation GUI
* LW: Mac: fixed: crash on exit


v1.0 Build 1369 (2014-09-11)

* fixed: crash when loading corrupted compressed cache files
* fixed: GPU simulation fell back to CPU earlier than necessary


v1.0 Build 1367 (2014-09-10)

* C4D: fixed hang when using C4D textures for emitters in R16


v1.0 Build 1366 (2014-09-04)

* Windows: C4D: fixed crash in R16


v1.0 Build 1365 (2014-07-23)

* C4D: Support for R16


v1.0 Build 1364 (2014-06-27)

* support XParticles v2.59 Modifier API
* fixed: crash in some cases when rending scene with TFD renderer active but no container
* fixed: remove cache files if writing cannot complete successfully
* fixed: crash when processing corrupted velocity data
* fixed: upres refused to run on caches with empty first frame
* LW: fixed: crash when using emitter on non-mesh item that does have points


v1.0 Build 1360 (2014-06-11)

* fixed: negative add-emissions not working
* fixed: emitter surface texture was disable if emitter was also a collision object
* fixed: time-scale induced change in decay delayed by one sub-step


v1.0 Build 1357 (2014-05-16)

* fixed: render-time velocity displacement was affected by Simulation/Timing/Time Scale
* MacOS fixed: crash during startup on some systems


v1.0 Build 1355 (2014-05-07)

* Windows: improved cache writing performance (often improving effective simulation time)
* C4D: setting PFluid/Add Turbulence off by default
* fixed: crash during upres


v1.0 Build 1352 (2014-04-30)

* fixed: sim aborted occasionally at very low resolutions
* fixed: introduced multi-container rendering issue in 1351
* fixed: crash on startup on some Windows systems


v1.0 Build 1351 (2014-04-24)

* fixed: crash when using TFD with Krakatoa on shader with no selected channel
* LW: fixed: excluding container from light did not disable shadows
* C4D: fixed: Xpresso GetFluidData did not cnovert coord system for velocity


v1.0 Revision 1323 (2013-12-16)

* warn about scene file restriction when saving scenes in Learning Edition


v1.0 Revision 1317 (2013-12-11)

* LW: fixed: not all CPU cores detected on some systems and LW versions
* C4D: added particle explosion example


v1.0 Revision 1304 (2013-11-05)

* fixed: settings and license activation not saved on some systems


v1.0 Revision 1291 (2013-10-23)

* fixed: changing viewport preview linear interpolation wouldn't activate until next refresh
* LW: fixed: crash when rendering multi-scatter scene with VPR


v1.0 Revision 1277 (2013-10-09)

* fixed: several OpenGL issues
* fixed: crash when loading corrupted cache files
* fixed: license activation dialog showing up more than once in some situtations


v1.0 Revision 1274 (2013-10-01)

* fixed: upgraded smoke shading handled certain mapping curves incorrectly
* fixed: memory leak in libtfd
* LW: fixed: smoke color gradient layer parameter "Fluid Channel" missing before scene stored for first time
* fixed: shader smoothing problem at x boundary


v1.0 Revision 1248 (2013-09-16)

* fixed: problems with collision objects
* fixed: closed BNDs not handled correctly in several situations
* increased smoke shading accuracy
* abort simulation faster when it's storing LastSimState


v1.0 Revision 1245 (2013-09-13)

* LW: updated simple explosion example
* LW: moved settings to separate dialog
* LW: fixed: sub-grid noise settings didn't refresh VPR
* LW: fixed: black body green and blue amplification parameters were interchanged
* C4D: fixed: don't send CUDA init errors to C4D console


v1.0 Revision 1244 (2013-09-12)

* C4D: support for Team Render
* C4D: warn when using XP objects but XP version is <v2.1
* C4D: fixed: NET render not working with mixed OS clients
* C4D: fixed: crash when using XP <v2.1
* C4D: fixed: OpenGL related crash on MacOS
* fixed: gap artefact in render in some setups
* C4D: MacOS: fixed: hang during startup if more than one version of TFD is installed
* fixed: bad shader accuracy for constant/empty fire channels


v1.0 Revision 1215 (2013-09-03)

* added support for X-Particles v2.1
* added After Effects example for 32bit linear fire comp
* added lib_tfd
* some performance optimizations
* renamed illumination modes to be more intuitive
* fixed: wind was not handled correctly in some situations
* fixed: upres refusing to run if first frame of cache has no velocity
* fixed: disable Multi-Scatter when Illumination is set to Optimal instead of silently falling back to Fast
* fixed: particle sub-frame emission did not work correctly with time scale other than 100%
* C4D: fixed: hang when exiting C4D on some systems
* C4D: fixed: crash in when container was cloned in specific situations
* Windows: check if another version of TFD has already been loaded to avoid collisions


v1.0 Revision 1160 (2013-06-16)

* C4D: fixed: occasional crash when viewport preview was active and simulation terminated
* C4D: fixed: slow viewport preview if no CUDA device available
* LW: fixed: disabling emitters was broken
* LW: fixed: normal force direction was inverted
* fixed: upres gives missing velocity error if first frame of cache is empty


v1.0 Revision 1155 (2013-05-22)

* use system proxy setting for license activation
* added lerp fallback for Fedkiw's not quite monotonic cubic interpolator
* fixed: crash when running empty simulations in some situations
* fixed: shader smoothing was broken
* C4D: fixed: polygon selections with modifiers weren't handled correctly
* LW: fixed: fluid light was broken

v1.0 Revision 1148 (2013-05-15)

* removed upres/add. large octaves parameter
* LW: updated Big Blast example
* C4D: log error if too many statically linked plugins prevent TFD from loading
* LW: fixed: crash when deleting list emitter/container items in some situations
* LW: fixed: envelopes on Turbulence/Smallest Size and Largest Size didn't get loaded
* LW: fixed: crash when rendering empty cache with multi-scattering
* MacOS: fixed: hang when quitting host application after using TFD
* fixed: viewport preview didn't work for viewports wider than 2048 pixels
* fixed: rotational collision velocity was incorrect in some situations
* fixed: container movement not considered correctly for emitter velocity
* fixed: directional force emission was incorrect since 1112 (too weak)
* fixed: simulation not working correctly if wind direction vector is (0,0,0)
* fixed: turbulence scale was incorrect for upres and normal sim


v1.0 Revision 1129 (2013-04-09)

* various minor optimizations
* fixed: crash if gravity/buoyancy direction is 0 but intensity isn't
* fixed: crash when using collision objects in empty container
* fixed: sim device jumped back and forth once during CPU fallback
* C4D: fixed: hang after sim aborted during preparation (infinite upload_preview_texture/slot_redraw_/Draw loop)
* C4D: fixed: sim dialog didn't reset after aborting sim with critical-memory-warning
* C4D: MacOS: fixed: crash when saving presets with Content Browser open
* C4D: MacOS: fixed: interactive mode not working on some GPUs


v1.0 Revision 1120 (2013-03-11)

* fixed: crash on some systems without CUDA support
* fixed: viewport preview selection was broken
* LW: fixed: hang when continuing GPU simulation
* LW: fixed: crash when aborting sim-while-render during preparation


v1.0 Revision 1112 (2013-03-06)

- new interactive simulation mode
- added Solver/Pressure Iteration Limit parameter
- using 1st order advection with cubic interpolation per default
- Simulate-while-rendering is not storing cache to disk anymore
- GPU simulation runs in parallel to rendering when using simulate-while-rendering
- fundamental optimization of emitter/collision object handling
- upgraded to CUDA 5.0
- fail gracefully if sim aborts with unexpected error
- disabled histogram in curve editor by default
- added version name to installation directory
- option to disable adaptive container (e.g. for benchmarking)
- improved multi-GPU handling for sim/preview
- several performance improvements
- C4D: print log file path to C4D console for simple reference
- C4D: added alternative cache path for mixed platform networks
- fixed: mixing closed and wind boundaries didn't work properly
- fixed: simulation processed one frame beyond range in some cases
- fixed: bias issue with turbulence
- fixed: curve editor did not update histogram until moving the timeline
- fixed: animating time scale lead to hanging simulation in some cases
- fixed: upresing didn't work if container was maximized
- fixed: potential hanging if cache has large off-sequence frame numbers
- fixed: particle voxelization was off by one frame in some situations
- fixed: curve editor x/y spinboxes had a low maximum value
- fixed: up-res used incorrect noise scaling
- fixed: subgrid noise intensity scale was dependent on voxel size
- C4D: fixed: velocity determination of TP geometry used as collision objects didn't work
- C4D: fixed: removing cache did not work correctly
- C4D: fixed: crash when using render preview on empty container
- C4D: fixed: crash when starting a sim after viewport preview was active in a non-standard GUI layout
- C4D: fixed: crash when using Reset All on any container parameter
- C4D: fixed: crash on exit on some Mac systems
- C4D: fixed: subgrid noise smallest/largest unit scale was incorrect
- C4D: fixed: some deformers and generators didn't work as emitters correctly
- C4D: fixed: cache selection didn't work properly if empty folders existed in base path
- LW: fixed: MacOS: crash on exit


v1.0 Revision 1009 (2012-10-05)

- fixed: upres was broken in some cases


v1.0 Revision 1001 (2012-09-13)

- C4D: fixed: OpenGL issues in R14
- fixed: temperature/bouyancy default value needed an update


v1.0 Revision 997 (2012-09-04)

- C4D: fixed: TP integration was broken in R14
- Gravity and Buoyancy parameters are per frame now (instead of per second) to make them consistent with other force parameters


v1.0 Revision 995 (2012-08-07)

- LW: Mac: fixed: crash after shutting down LW
- LW: Mac: fixed: crash when starting TFD on some systems


v1.0 Revision 994 (2012-08-05)

- Mac: fixed: GPU simulation not working on some cards
- fixed: do not check for updates in render-only mode
- C4D: fixed: R14 viewport crashing in some situations
- C4D: fixed: on MacOS C4D was hanging during startup on some systems


v1.0 Revision 989 (2012-07-16)

- fixed: Load Simulation State From File not always working correctly
- fixed: #cores/threads displayed incorrectly on some CPUs


v1.0 Revision 987 (2012-07-12)

- store pipeline timing in CSV file after sim
- fixed: max emitter velocity computation didn't consider transformed voxel space
- show CPU name in processor selection
- LW: fixed: viewport container box color not set correctly
- LW: fixed: conversion from old keyframes on container scale didn't work correctly


v1.0 Revision 986 (2012-06-22)

- C4D: fixed: direct illumination not handled correctly when multiple scattering was enabled
- LW: fixed: crash when loading some old projects
- LW: fixed: some threading issues when handling animated collision objects
- support Kepler generation Nvidia cards


v1.0 Revision 983 (2012-05-23)

- Light Brightness parameter affects first scatter event now as well
- LW: fixed: random crashes when using multiple scattering


v1.0 Revision 982 (2012-05-12)

- optimized emitter filling and collision object handling (significantly for some objects)
- allow container rotation
- removed Render Transform (transform container like a normal object instead)
- removed Fluid Moves With Container (use Grid Offset instead)
- moving container during sim does not add opposing wind to velocity cache anymore
- not clamping emission radius to voxel size anymore
- added japanese manual
- added web based license activation
- C4D: updated japanese strings
- C4D: warning about framerate mismatch checked first render data set instead of active one
- C4D: fixed: scaled containers didn't render correctly in viewport
- C4D: fixed: volume texture wasn't scaled correctly (gradient, etc. didn't work)
- C4D: fixed: loading tag presets saved with LE didn't work
- LW: fixed: loading pre 979 scenes crashes in some cases
- fixed: GPU sim hangs when container becomes empty
- fixed: occasional crash when having curve histogram update during sim
- fixed: crash on some Macs during startup
- fixed: alpha channel was corrupted when using motion blur
- fixed: improved adaptive container accuracy
- fixed: made mesh-to-voxel conversion more robust (collision objects and emitter filling)
- fixed: directional force was not scaled correctly


v1.0 Revision 966 (2012-04-10)

- container adaptation more sensitive to expansion
- support simple 1st order advection
- fainter watermark in Learning Edition
- fixed: occasional crash when finishing a sim that's been moved from GPU to CPU
- fixed: occasional crashes when curve editor histogram was updated during sim
- fixed: accuracy issue in adaptive tracer
- fixed: crash when loading project saved with some old versions
- fixed: scale issue with direction force emission
- fixed: sim continue did not work when fuel expansion was active in continued frame
- LW: fixed: motion blur not working correctly with single sample


v1.0 Revision 961 (2012-03-24)

- fixed: shading accuracy issue
- fixed: MacOS: compiler regression causing bad CPU occupation


v1.0 Revision 958 (2012-03-16)

- updated japanese strings
- reduced memory usage during sim
- improved turbulence operator
- added vorticity mapping
- several smaller performance improvements
- C4D: fixed: damping parameter did not get disable when fire shader was disabled
- C4D: fixed: motion blur with more than one sample did not work correctly
- fixed: occasional crash during sim (usually with high resolutions)
- fixed: crash when compressing cache with more than 537MegaVoxel
- fixed: sim while render crashed in C4D


v1.0 Revision 940 (2012-03-06)

- removed Emitter Steps parameter (default to automatic)
- removed Simulation Step Size (defaults to 1)
- renamed Max. Sim Steps to Frame Sub-Steps Limit
- renamed Fine Turb. Strength to Fine Turb. Intensity
- renamed Container Threshold to Clip Below
- removed Limit Velocity
- removed max grid dim from sim progress dialog (can be seen in container dialog)
- added MV value, last used #steps and last time per frame to sim progress dialog
- added revision number to dll filename to make bug reports more informative
- allow single seat licenses to activate online
- Viewport preview supports re-mapped shader mode now (fire output should be near identical to render)
- Updated CUDA framework to v4.1
- Improved fire sampling efficiency. Even very peaky mapping curves can now be rendered with large step sizes (new default is 50%).
- Moved Motion Blur parameters to render settings (Volumetrics/Fluid Shader in LW)
- fire and smoke opacities are max'ed now instead of being added
- renamed Preview/Mapping Curve to Preview/Shader
- C4D: updated example files
- C4D: improved contrast in icons
- C4D: Particle Velocity Scale set to 0% by default. It affects bullet dynamics objects, so it's confusing
- C4D: disabling upres parameters when Fine Turb. Intensity = 0
- C4D: updated japanese strings
- LW: Motion Blur now also works with 1 MB pass
- LW: change sim progress dialog info string format
- C4D: fixed: render preview popup did not update after being closed once
- C4D: fixed: sim dialog buttons reset when choosing open sim dlg from menu but sim is running
- C4D: fixed: C4D not starting up on Mac OS 10.7.3 with TFD installed in some cases
- C4D: fixed: collision objects did not get disabled by Emitter Active checkbox
- C4D: fixed: occasional crash when using particle advection
- LW: fixed: crash on some systems related to curve editor undo history
- LW: fixed: container dialog didn't resize correctly if font-size > 100%
- LW: fixed: failed GPU-to-CPU fallback resulted in crash
- LW: fixed: online updater not working on MacOS
- LW: fixed: update check did not run automatically
- fixed: sim dialog done_frames was off by 1
- fixed: memory warning did not consider 32bit limit
- fixed: update check reported "no new version available" if connection failed
- fixed: velocity sim bypass not deactivated when exclusively using pressure emission
- fixed: online activation timeouts on some systems
- fixed: crash on sims with very small containers (like 2x2x2) and emitters covering the whole container
- fixed: crash in curve editor display when using extreme bias values
- fixed: in multi-user environments Volume and Floating licenses did not activate system-wide
- fixed: curve editor histogram computation was slowing down GUI (esp. for hires containers)
- fixed: fire shader sometimes created random white pixels when using separate opacity
- fixed: renderer clipped low values
- fixed: MacOS compatibility issues (qt and cudart versions)
- fixed: crash when rendering with zero extent mapping curve
- fixed: velocities for some collision geometry could blow the sim up
- fixed: sim sometimes hanging when not starting at first frame
- fixed: container threshold accuracy problem


v1.0 Revision 889 (2011-12-31)

Notes:
- You will have to enter your license key again when starting this build for the first time.
- Render and simulation results are not identical with previous versions.
- You may have to adjust your Simulation/Velocity/Container Threshold value to keep the container smaller.

Changes:
- GPU support for simulation
- use less sim memory in memory-saving mode (32 bytes per voxel minimum, 48 bytes when using collision objects)
- display size of disk cache in sim dialog
- display full progress range on continue, not just remaining frames
- moved log file to settings-folder (C:\Users\<username>\AppData\Roaming\jawset on Win, /Users/<username>/Library/Preferences/ on Mac)
- option to disable overwrite-question
- voxel_space is in whole voxels now only (avoids offset issues when container is moving)
- burn decay mode is linear by default now
- more accurate container adaptation wrt. velocity
- using term "Collision Object" instead of "Obstacle"
- renamed "Extrapolate into Obstacle" to "Smooth Collision Surface Rendering"
- added camera distance/opacity mapping
- f-curve editor: added fit-display-to-curve button
- improved advection accuracy
- replaced Advection Stride parameter with checkbox for Adaptive Tracer
- separate viewport preview channel selections for each velocity component
- upres performance and memory usage optimizations
- new fire shader damping parameter
- improved blackbody color accuracy
- improved "clear smoke above" smoothness
- improved turbulence accuracy
- improved simulation performance when using collision objects
- always clamp emitter radius to voxel size. radius=0 with filled emitter causes aliasing artefacts (asymmetric overall emission)
- animate sub-grid noise
- Motion Blur does not use time-scale parameter anymore - uses time step from sim-cache instead
- Changed random number generator for turbulence and sub-grid noise
- added option to always enclose moving obstacles in adapting container
- warn when trying to use Learning Edition with NET Render/LWSN
- improved accuracy of collision velocities
- improved voxelization performance for high vertex/particle counts
- log memory benchmark at startup
- determine collision velocities per-vertex (works with MDDs, all kinds of Deformers, Bullet, etc.)
- set emitter channel values to 0 by default
- "Collision Objetcs Enlarge Container" option now also considers closed boundaries
- fixed: closed +/-Z boundaries were inverted
- new license dialog
- new icons for f-curve editor
- renamed "Resolution up to" to "Max Memory Usage", new formatting
- fixed: GPU sim: container adapting incorrectly (too big) on first few frames
- fixed: handling of closed boundaries not fully accurate
- fixed: moving obstacles' velocity was in wrong coordinate system (z coord flipped)
- fixed: render-frame was relative to preview-range, which broke in LWSN with frame-step/offset other than 1/0
- fixed: noise speed/period parameter not always handled properly
- fixed: container adaptation issue causing too much velocity clipping
- fixed: upres always processed all lores frames, ignoring frame range
- fixed: upres didn't work on negative frames
- fixed: sim dialog ETA considers only last 30 frames to adapt faster
- fixed: animated container scale didn't work
- fixed: multi-scatter didn't work with sub-grid and motion blur
- fixed: positive closed boundaries not handled correctly
- fixed: when advecting velocity w/o turbulence, mix of velocity fields at step n and n+1 were used
- fixed: intensity parameter magnitudes for sub-grid turb and upres-turb are in sync with main turbulence
- fixed: incorrect resolution handling for upres in some situations
- fixed: problem with container adaptation
- fixed: render-time was erroneously affected by scale of Render Transform
- fixed: hanging or resetting sim output with some turbulence settings
- fixed: using center of container to determine wind speed. so there's no wind for a scaling transform
- fixed: voxel size needed adjustment for render transform
- fixed: upres grid size not always computed correctly
- fixed: continue from file didn't set the sim time correctly
- fixed: opacity output not handled correctly
- fixed: time-scale wasn't applied to start-frame
- fixed: moving containers didn't update at sub-frame speed
- fixed: first frame of continued sim wasn't advected correctly
- fixed: in save-memory-mode last frame in sequence was overwritten by LastSimState
- fixed: made matte mode color additive to be more flexible for multi-container setups
- fixed: mesh voxelization artefact
- fixed: surface texture based emission was broken
- fixed: noise animation didn't consider frame offsets (e.g. in multi-node network render)
- C4D: added "Create New" button to overwrite warning dialog
- C4D: continue and upres menu items
- C4D: always using cache filename prefix to make cache copy optional for NET render
- C4D: changed default container and voxel sizes
- C4D: menu item to open simulation dialog without starting the sim
- C4D: continuing simulations with particle inputs did not update particle systems properly
- C4D: warn on sim start (render start doesn't work) if render FPS != sim FPS
- C4D: avoid update reminder to interrupt batch render
- C4D: show error if cache dir cannot be removed
- C4D: NET clients check for cache files locally before requesting them from their server
- C4D: fixed crash when quitting C4D while sim is running
- C4D: fixed: viewport preview view direction inverted in some projection modes
- C4D: fixed: don't create cache until start of sim
- C4D: fixed: don't list non-cache folders in cache list
- C4D: fixed: sim progress bar didn't update until the end for very fast simulations (C4D discarding messages)
- C4D: fixed: grid display didn't show on correct axis for some viewport modes
- C4D: fixed: crash in content browser
- C4D: fixed: sim abort after renaming cache folder
- C4D: fixed: crash when changing layout in R13 Mac
- C4D: fixed: shader not always restored correctly in R13 viewport render
- C4D: fixed: for matte objects alpha output wasn't handled correctly
- C4D: fixed: preview didn't always update properly
- C4D: new icons
- C4D: fixed: generated objects weren't always voxelized correctly
- LW: added particle emitter randomization
- LW: make collision menu item
- LW: option to enable smoke illumination in VPR
- LW: consider unseen-by-alpha
- LW: hide non-emitter objects during sim to improve viewport speed for high-poly objects
- LW: abort sim with error if no viewport shows geometry
- LW: made container list box larger
- LW: allow to turn off Fluid Motion Blur
- LW: always setting emitter object visibility to vertices during sim
- LW: support render checkbox in scene editor for fluid containers
- LW: added menu items for switching the viewport channel (allows for hotkeys to be assigned)
- LW: restore item selection after sim
- LW: undo/redo for fcurve editor
- LW: dropped obsolete Output sRGB option for LW >= 10
- LW: fixed: hang during multi-scatter in some cases
- LW: fixed: shading parameter "Smoothing" envelopes not re-loaded after scene save
- LW: fixed: preview-range wasn't always updated for use as simulation range
- LW: fixed: emitter velocity computation was incorrect (too many emitter substeps were taken)
- LW: fixed: container as child of scaling item breaks voxel space computation
- LW: fixed: setting emitter objects to visible (vertices only) if necessary instead of select/dirty/update_motion (doesn't work with cloned objects)
- LW: fixed: crash in loader if libs are missing
- LW: fixed: working around missing viewport-type bug in 10.1
- LW: fixed: curve editor histogram updated too often
- LW: fixed: histogram not always updating
- LW: fixed: handle negative container scaling correctly
- LW: fixed: render transform reset after load in Layout
- LW: fixed: hang in prepass when LW renderer does not start all render threads
- LW: fixed: only use separate alpha scale for camera rays
- LW: fixed: pressing stop shortly after sim dialog opened got ignored
- LW: fixed: crash on render when cache dir didn't exist and couldn't be created
- LW: fixed: cache dir should be created only at sim start


v0.4 Revision 777 (2011-08-03)

- improved viewport render speed
- fixed: problem with closed container boundaries in some situations
- fixed: problem with container resizing
- C4D: fixed: R13 bounding box display was broken


v0.4 Revision 775 (2011-08-02)

NOTE: Changes to projects created with previous version necessary:
! Caches created with previous versions have to be re-simulated
! Lights need to have shadows enabled in order to for the smoke to have self-shadowing
! Shaders that use Burn as input need adjustment of the mapping curve:
  The Burn channel values lie between 0 and Burn Rate now instead of 0 and 1

- Multiple Scattering to illuminate smoke from fire and/or external light sources
- Render Transform allows to transform container arbitrarily for rendering
- added Illumination Resolution parameter to allow for undersampling smoke illumination
- new render-time noise algorithm
- allow to emit directly to burn channel
- ignition channel selection and remapping
- added linear decay mode for burn channel
- new help system
- diffusion radii specified in distance units in accordance to voxel size
- allow locking of cache directories to avoid accidental overwrites
- improved multi-core occupancy
- use gradient in f-curve editor histogram corresponding to viewport preview
- show fire color in curve editor
- changed some parameter default values
- allow to disable self shadowing and/or shadow casting
- added shadow step size parameter
- added separate opacity for smoke shader
- full slicing displays solid channel properly
- added single scattering anisotropy
- display required memory, warn before starting sim if memory might not suffice
- obey Matte Object, Matte Color settings
- improved render performance
- flipped frame offset sign - more intuitive
- LW: only draw viewport preview if display mode is textured
- Velocity Displacement for each shader separately
- fixed: Show Grid not working on ATI cards
- fixed: not all cores used on some Dual Xeon systems
- fixed: grids are offset by half a voxel in viewport preview and render
- fixed: container adapting too tightly for explosions
- fixed: directional force not working unless one other channel is emitted to
- fixed: when container position is animated cache may be transformed incorrectly
- fixed: occasional crash with some container dimensions during up-res
- fixed: bug in upres sub-step handling
- fixed: unintuitive turbulence intensity value range
- fixed: consider mapping for "clear smoke if above"
- fixed: multi-container rendering issues
- fixed: obstacle converter didn't handle degenerate polygons correctly
- fixed: sim couldn't be run on negative frame numbers
- fixed: emitter velocity determination was broken
- fixed: preview slicing orientation wrong in some situations
- C4D: fixed: Light/Scene/Mode = Include didn't work for fluid containers
- C4D: fixed: problem with particle lookups/movement
- C4D: fixed: crash when using shader other than Noise for Fire/Smoke texturing
- C4D: fixed: crash when loading TFD scenes into Content Browser on MacOS
- C4D: fixed: timing problem when using obstacles and particle emitters
- C4D: fixed: moving container as child of animated object not working
- C4D: fixed: sim-while-render not working if cache not empty
- C4D: fixed: sim can be started while sim-while-render is running, resulting in crash
- C4D: fixed: crash when finishing sim-while-render run
- C4D: fixed: incorrect occluding in viewport preview
- C4D: fixed: user document's color profile for gradient parameters
- C4D: fixed: progress dialog close didn't work
- C4D: fixed: don't start sim-while-render if only one frame is being rendered
- LW: added emitter modes: Disabled, Single Object, Include Children
- LW: fixed: crash in LWSN when Frame Range is Preview Range
- LW: fixed: surface texture on emitters didn't support UV mapping
- LW: fixed: velocity scale for particles not scaled as expected
- LW: fixed: moving solids create incorrect velocities
- LW: fixed: default cache directory names don't use spaces anymore
- LW: fixed: Fluid Shader Volumetric couldn't be removed
- LW: fixed: cloned objects not working as obstacles
- LW: fixed: texturing always active if tex coords are present (even if texture scale is 0)
- LW: fixed: crash during render when using fire opacity channel with texture
- LW: fixed: directions of light oriented incorrectly when rendering with Raytrace shadows off
- LW: fixed: random crashes when using GL viewports and f-curve editor
- LW: fixed: crash when removing cloned emitter
- LW: fixed: render shadow rays for smoke illumination even with unseen-by-rays flagged on the container
- LW: fixed: polygons with >5 vertices not handled for obstacles
- LW: fixed: global ambient light was ignored
- LW: fixed: lighting bugs when using motion blur
- LW: fixed: hang when trying to access non-existant cache on project load
- LW: fixed: useless depth buffer output
- LW: fixed: normal force orientation was inverted
- LW: fixed: VolumeShader not always added when creating a fluid container


v0.3.36 (2011-03-27)

NOTE: Caches created with previous versions have to be re-simulated

- Up-res'ing of existing simulations
- option to disable voxel interpolation in viewport preview
- added Max. Emitter Steps parameter
- improved turbulence quality
- more intuitive turbulence parameters
- cubic interpolation for advection parameter
- reduced memory usage for rendering as well as simulations with obstacles
- save full sim state when sim finishes or aborts to allow continuing at that point regardless of cached channels
- more convenient continuing of aborted simulations
- ask before overwriting simulation cache
- more accurate container adaptation
- added Frame Step parameter to allow for frozen, backward, etc. rendering
- added Advection Stride parameter
- allow to disable smoke illumination
- smoke color gradients
- option to save some memory (at the price of somewhat increased sim-time)
- fixed: viewport preview crashes if graphics driver doesn't support required OpenGL version
- fixed: sporadic crashes during simulation
- fixed: simulated cache does not scale/translate if clipping container is changed
- fixed: problem with some polygon orientations when filling emitters/obstacles
- fixed: advection accuracy issues
- fixed: grid display in viewport was slow
- fixed: emitter radius was clamped to 1 voxel even if set to 0
- C4D: show warning in viewport preview tab if OpenGL is disabled
- C4D: fixed problem that caused fluids not to render with NET Render in some situations
- C4D: incorrect emitter/obstacle velocity determination in some situations
- C4D: fixed: problems when NET Client uses a different OS than the NET Server
- C4D: fixed: freezing progress dialog when copying cache files for "Save Project..."
- C4D: fixed: viewport did not update when changing cache selection
- LW: surface-textured emitters
- LW: fixed: simulation progress not advancing properly on some systems
- LW: fixed: fire shader renders slower with manual gradient
- LW: fixed: flicker in fluid textures


v0.3.35 (2011-02-03)

- LW: fixed GUI related crashes on MacOS


v0.3.34 (2011-01-31)

- LW: new 3D viewport preview
- LW: removed ram cache frames parameter
- LW: don't update VPR while dragging a curve tension control
- LW: fixed: crash when creating undocked preview
- LW: fixed: crash when deleting FluidContainer custom object, then opening Containers dialog
- LW: fixed: sim progress frame number was offset by 1
- LW: fixed: cache compression checkbox was not working
- C4D: replaced particle mode preview with 3D slicing
- C4D: PFluid TP Node: set particle spin from fluid
- C4D: PFluid TP Node: add particle turbulence
- C4D: fixed: TP particle advection didn't consider frame offset
- C4D: fixed: crash when using separate opacity channel
- C4D: fixed: crash when using smoke texture but no fire texture
- C4D: runtime compatibility problem with C4D versions older than R12
- C4D: preview does not show fluid textures anymore
- C4D: fixed: flicker in fluid textures
- C4D: fixed: crash on startup with R11
- C4D: dropped support for R10.5
- C4D: sim-button restarts sim is used while sim is running
- C4D: allow to hide bounding boxes in viewport preview
- C4D: fixed: crash when using gradient shader inputs
- single slice preview oriented automatically
- grid pattern oriented automatically
- grid display as checkerboard instead of fence (more detail for high resolutions)
- reduced cache load times
- changed fire opacity to not affect luminosity
- using voxel size as minimum emission radius
- fixed: sim may abort when using thin containers (like 100x100x3)
- fixed issue with jittery progress bar
- option to disable extrapolation into obstacles (for use with invisible or transparent obstacles)


v0.3.33 (2011-01-14)

- improved simulation and rendering performance
- fully adaptive resolution, container is for clipping only
- C4D: removed ram cache frames parameter
- C4D: fixed: normal force was blowing into both directions
- fixed: synchronization bug that could cause TFD to hang during simulation
- simulation reacts to stop button more quickly
- C4D: fixed: buggy advection of TP particles
- C4D: fixed: on MacOS opening C4D files by double clicking or dragging to dock while C4D is running didn't work
- ditched installer on Windows such that plugin can be installed to a network oder USB drive
- C4D: merged builds for all C4D versions into a single package
- C4D: fixed: crash when rendering with fluid texturing
- C4D: fixed: preview mode None didn't hide the GUI correctly


v0.3.32 (2010-12-21)

- C4D: updated japanese translation
- C4D: support license server


v0.3.31 (2010-12-17)

- Texture based emission
- C4D: Vertex Map based emission
- Particle-based viewport preview
- LW: fixed: LWSN not working without license key
- C4D: added emitter activation switch
- C4D: do not re-insert videopost after deletion
- C4D: changed shader smoke thickness and fire opacity scales
- C4D: fixed: visiblity flags not handled correctly
- C4D: fixed: crash in preview when deleting container
- fixed: container adaptation did not consider max. sim steps (containers larger than necessary)
- C4D: added preference dialog for R12
- C4D: preview resizable, dynamic resolution, using aspect ratio from render settings
- C4D: save zoom/translation for curve editors
- fixed: container not adapting correctly in some situations
- C4D: fixed: moving solids not handled correctly in R12


v0.3.30 (2010-11-25)

- fixed crash related to curve editor histogram
- fixed crash when loading invalid decay parameter value
- LW: fixed: LWSN rendering was broken


v0.3.29 (2010-11-24)

- Fluid Texturing
- LW: more compact UI
- LW: work around crash when using imported RealFlow particles as emitters
- separate light absorption and shadow color parameters in smoke shader
- renamed Fire Clears Smoke to Clear Smoke If Above
- optimized performance for obstacle handling
- several minor bugfixes
- LW: fixed: viewport grid drawing was stretching voxels
- LW: automatically close sim dialog when sim finishes
- LW: update curve editors correctly when changing selected emitter/container
- C4D: fixed crash when rendering in combination with Hair
- LW: fire shader manual color mode was broken
- set default values for emitter density/temperature/fuel to 1 instead of 0
- fixed: shadow rays did not consider motion blur
- fixed: alternate solver was broken
- LW: fixed: update slice preview correctly in multiple viewports
- LW: select slice orientation automatically for parallel projection viewports
- LW: fixed: menu disappeared on MacOS when TFD was active


v0.3.28 (2010-11-09)

- C4D: made several parameter names unambiguous for animation view


v0.3.27 (2010-11-03)

- LW: new example projects
- LW: new centralized GUI for handling containers and emitters
- LW: new simulation progress dialog
- LW: allow simulation during scene rendering
- LW: open help from menu
- LW: in add-container name-popup, handle shortcuts correctly
- LW: animated emitter noise
- LW: save multiple license keys to allow for convenient dongle-swapping
- LW: optionally render sRGB (parameter for Volumetric FluidShader)
- LW: menu branch preset
- LW: fixed: emitter settings didn't affect child items
- LW: GI intensity parameter
- LW: about dialog
- LW: moved auto update checkbox to about dialog
- LW: mapping curve previews
- LW: redirect unused keys from curve editor to LW
- LW: unified distribution package (LW9/10 32/64 bit)
- fixed: crash when emitting into deactivated channel


v0.3.26 (2010-10-23)

- fixed: fire field delayed by one frame wrt. fuel emission
- fixed: crash when all emitters outside of container before first resize


v0.3.25 (2010-10-22)

- C4D: made compositing tag work on fluid containers ("Seen by..." parameters)


v0.3.24 (2010-10-11)

- fixed: filled emitter's interior was mirrored at z axis
- fixed: artefacts in smoke shader velocity displacement and low mapping intensities
- C4D: fixed: GUI related crashes
- fixed: container did not adapt to rotated emitter objects correctly


v0.3.23 (2010-10-06)

- fire clears smoke parameter now specifies input value, not mapping output value
- allow to selectively set closed container boundaries
- fixed inaccuracy affecting set-mode emitters
- improved turbulence accuracy (you may have to increase turbulence intensity for old projects)
- renamed Fire channel to Burn to distinguish it form the Fire Shader
- renamed Smoke channel consistenly to Density to distinguish it from the Smoke Shader
- Burn channel stays consistently within [0,1] while burning (fire mapping curve in old projects may have to be be stretched)
- fixed: adaptive container changed cloud-shape considerably for explosions
- container adapts tighter
- C4D: fixed: last frame not simulated when using "simulate while rendering"
- C4D: fixed: updating preview did freeze curve editor
- optionally display grid in viewport to visualize container resolution
- C4D: consider light's exclude list when rendering container
- allow to use any channel to scale turbulence intensity
- fixed: dir force didn't work with filled emitters
- fixed: obstacles used wrong coord. system (z-axis flipped)


v0.3.22 (2010-09-22)

- removed vorticity sustain (ineffective)
- C4D: fixed bug in half-life computation
- C4D: fixed: some emitter parameters were modified after re-loading a project
- fixed: artefacts in fluid channels when using obstacles


v0.3.21 (2010-09-19)

- Added tinting controls for blackbody color
- C4D: Fixed broken velocity displacement in sequence render
- Fixed bug in combined fire/smoke shading
- C4D: Removed sliders by default. Slider use is discouraged. It creates a wrong impression of value ranges in most places.
- Generate less knots when editing blackbody gradient
- C4D: Hide unsed color controls in manual/blackbody mode
- C4D: fixed: sim. while render didn't abort correctly if sim. dialog was closed during render
- C4D: fixed: crash when quitting C4D after using the plugin
- changed burn rate parameter to absolute values
- bypass fluid simulation if no forces/velocities are present (allow to use fast/simple volumetrics only)
- C4D: fixed transformation issue with tagged emitters grouped by Null objects
- allow to specify half-life instead of decay fraction per frame, which is more intuitive in many situations
- C4D: fixed: polygon selection emitter did not enlarge adaptive container


v0.3.20 (2010-09-08)

- C4D: support linear workflow (with both DeGamma and R12)


v0.3.19 (2010-09-07)

- Optional frame-by-frame simulation while rendering
- fixed several timescale related issues
- fixed bug causing stepping artefacts for emitters
- optimized particle voxelization (more optimization pending)
- allow to select which active channels are cached to disk
- When using multiple octaves, Turbulence/Scale specifies the smallest scale now, not the largest
- fixed: container not adapted in first frame of simulation


v0.3.18 (2010-09-02)

- removed physical scale parameter
- CINEMA 4D R12 support


v0.3.17 (2010-09-01)

- C4D: fixed freeze during render when slice preview is active


v0.3.16 (2010-08-31)

- Reduced simulation memory usage by up to 29%


v0.3.15 (2010-08-28)

- Changed fire shader to always use opacity
- Added opacity scale parameter
- Customizable threshold for fire clears smoke


v0.3.14 (2010-08-27)

- Set-mode for channel emission
- Option to clone manual gradient from blackbody color
- C4D: Allow multiple emitter tags per object (e.g. to emit into different channels with different radius or particle property control)
- Emitter radius is not clamped to a minimum depending on the voxel size anymore. Set it to voxel_size * sqrt(3) if it's value is below that to get the same results.


v0.3.13 (2010-08-25)

- allow to scale emission from particles as a function (curve editor) of particle properties (age, mass, etc.)


v0.3.12 (2010-08-23)

- C4D: fixed: Container does not adapt to generated geometry
- fixed: Container does not adapt to particles
- C4D: Support emitter tag on ThinkingParticles' ParticleGeometry object even without geoemtry


v0.3.11 (2010-08-20)

- more precise particle voxelization
- C4D: allow to disable container like other objects in Object Manager
- fixed: directional force is not converted to RHS
- C4D: if there is only one container in the scene, don't ask to select it when starting simulation
- removed hidden constant in the gravity intensity
- C4D: On emitter tag: last three options should be visibly separated
- Change "Levels" to "octaves" (Turbulence tab)
- Rename "When resizing volume, fix" to "When resizing volume, KEEP"
- "High Quality Solver" renamed to "Alternate Solver"
- C4D: fixed memory leak in TP code
- allow for negative channel emission
- less sensitive diffusion parameter
