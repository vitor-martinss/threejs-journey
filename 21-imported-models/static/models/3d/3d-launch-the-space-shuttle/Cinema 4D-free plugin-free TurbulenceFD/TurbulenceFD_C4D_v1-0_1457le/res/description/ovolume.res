CONTAINER Ovolume
{
    NAME Ovolume;
    INCLUDE Obase;

    GROUP ID_CONTAINER_GROUP
    {
        DEFAULT 1;

        GROUP ID_RESOLUTION_GROUP
        {
            DEFAULT 1;

            REAL ID_CELL_SIZE
            {
                ANIM        OFF;
                MIN         0.001;
                MAXSLIDER   10;
                STEP        0.001;
                UNIT        METER;
            }

            VECTOR ID_VOLUME_DIM
            {
                MIN     0 0 0;
                STEP    0.1;
                UNIT    METER;
            }

            VECTOR ID_GRID_OFFSET
            {
                STEP    0.1;
                UNIT    METER;
            }

            STATICTEXT ID_RESOLUTION_INFO { SCALE_H; }
        }

        GROUP ID_CACHE
        {
            DEFAULT 1;

            TRB_CACHE_LIST ID_CACHE_LIST {}

            GROUP
            {
                DEFAULT 1;
                COLUMNS 2;

                BOOL ID_LOCK_CACHE  { ANIM OFF; }
            }

            SEPARATOR { LINE; }

            BOOL ID_CACHE_TEMP  { ANIM OFF; }
            BOOL ID_CACHE_DENS  { ANIM OFF; }
            BOOL ID_CACHE_FUEL  { ANIM OFF; }
            BOOL ID_CACHE_BURN  { ANIM OFF; }
            BOOL ID_SAVE_VEL    { ANIM OFF; }
            BOOL ID_SAVE_SOLID  { ANIM OFF; }

            GROUP ID_CACHE_INFO
            {
                STATICTEXT ID_CACHE_INFO_RESOLUTION {}
                STATICTEXT ID_CACHE_INFO_SIM_TIME {}
                STATICTEXT ID_CACHE_INFO_DOC_TIME {}

                GROUP ID_CACHE_INFO_AVAIL_CHANNELS
                {
                    DEFAULT 1;
                    BOOL ID_CACHE_INFO_VEL    {}
                    BOOL ID_CACHE_INFO_SOLID  {}
                    BOOL ID_CACHE_INFO_DENS   {}
                    BOOL ID_CACHE_INFO_TEMP   {}
                    BOOL ID_CACHE_INFO_FUEL   {}
                    BOOL ID_CACHE_INFO_BURN   {}
                }
            }
        }
    }

    GROUP ID_SIMULATION
    {
        DEFAULT	0;

        BOOL ID_RUN_SIM_WHILE_RENDER   { ANIM OFF; }

        GROUP ID_SOLVER_GROUP
        {
            DEFAULT 0;

            REAL ID_MAX_SIM_STEPS
            {
                ANIM ON;
                MIN 1;
                MAXSLIDER 20;
                STEP 1;
                UNIT REAL;
            }

            REAL ID_MAX_PRESSURE_ITERATIONS
            {
                ANIM ON;
                MIN 1;
                MAXSLIDER 10;
                STEP 1;
                UNIT REAL;
            }

            BOOL ID_ADAPTIVE_CONTAINER
            {}

            GROUP ID_SOLVER_ADVECTION_GROUP
            {
                DEFAULT 0;

                LONG ID_ADVECT_METHOD_VEL
                {
                    CYCLE
                    {
                        ID_ADVECT_METHOD_1STORDER;
                        ID_ADVECT_METHOD_2NDORDER;
                    }
                }

                LONG ID_ADVECT_METHOD_CHAN
                {
                    CYCLE
                    {
                        ID_ADVECT_METHOD_1STORDER;
                        ID_ADVECT_METHOD_2NDORDER;
                    }
                }

                BOOL ID_ADAPTIVE_TRACER
                {}

                BOOL ID_CUBIC_INTERPOLATION
                {}
            }

            GROUP ID_SOLVER_MISC_GROUP
            {
                DEFAULT 0;

                BOOL ID_SAVE_MEMORY
                {}

                BOOL ID_SOLIDS_ENLARGE_CONTAINER
                {}

                BOOL ID_EXTRAPOLATE_INTO_SOLID
                {}
            }

            GROUP ID_SOLID_BOUNDARIES
            {
                DEFAULT 0;
                COLUMNS 2;

                BOOL ID_SOLID_BND_NEGX
                { ANIM ON; }
                BOOL ID_SOLID_BND_POSX
                { ANIM ON; }
                BOOL ID_SOLID_BND_NEGY
                { ANIM ON; }
                BOOL ID_SOLID_BND_POSY
                { ANIM ON; }
                BOOL ID_SOLID_BND_NEGZ
                { ANIM ON; }
                BOOL ID_SOLID_BND_POSZ
                { ANIM ON; }
            }
        }

        GROUP ID_UPRES_GROUP
        {
            DEFAULT 0;

            REAL ID_UPRES_SCALE
            {
                ANIM        OFF;
                MIN         2;
                MAXSLIDER   8;
                STEP        1;
                UNIT        REAL;
            }

            REAL ID_UPRES_TURBULENCE_STRENGTH
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   10;
                STEP        0.1;
                UNIT        METER;
            }

            REAL ID_UPRES_TURBULENCE_SMALL_POWER
            {
                ANIM        ON;
                MIN         0;
                MAX         1;
                STEP        0.01;
                UNIT        REAL;
            }
        }

        GROUP ID_TIMING
        {
            DEFAULT	0;

            GROUP
            {
                REAL ID_TIME_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   200;
                    STEP        0.1;
                    UNIT        PERCENT;
                }

                LONG ID_FRAME_RANGE_MODE
                {
                    ANIM OFF;
                    CYCLE
                    {
                        ID_FRAME_RANGE_PREVIEW;
                        ID_FRAME_RANGE_ALL;
                        ID_FRAME_RANGE_CUSTOM;
                    }
                }

                BASETIME ID_START_TIME
                {
                    ANIM        OFF;
                    STEP        1;
                    MIN         0;
                }

                BASETIME ID_END_TIME
                {
                    ANIM        OFF;
                    STEP        1;
                    MIN         0;
                }

                SEPARATOR { LINE; }

                BOOL ID_SIM_STATE_CLEAN     { ANIM OFF; }
                FILENAME ID_SIM_STATE_FILE  { ANIM OFF; }
                BOOL ID_SIM_STATE_CONTINUE  { ANIM OFF; }
            }
        }

        GROUP ID_VELOCITY_GROUP
        {
            DEFAULT 0;

            REAL ID_ADAPT_THRES_VEL
            {
                ANIM        OFF;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            REAL ID_VELOCITY_DAMP
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   50.0;
                MAX         100.0;
                STEP        0.1;
                UNIT        PERCENT;
            }

            REAL ID_PARTICLE_VELOCITY_SCALE
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   100.0;
                STEP        0.1;
                UNIT        PERCENT;
            }
        }

        GROUP ID_WIND_GROUP
        {
            DEFAULT 0;

            VECTOR ID_WIND_DIRECTION
            {
                ANIM        ON;
            }

            REAL ID_WIND_SPEED
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   1000;
                STEP        0.01;
                UNIT        METER;
            }
        }

        GROUP ID_VORTICITY_GROUP
        {
            DEFAULT 0;

            REAL ID_VORTICITY
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   20.0;
                STEP        0.1;
                UNIT        REAL;
            }

            LONG ID_VORTICITY_INTENSITY_CHANNEL
            {
                ANIM OFF;
                CYCLE
                {
                    ID_CHANNEL_NONE;
                    ID_CHANNEL_DENS;
                    ID_CHANNEL_TEMP;
                    ID_CHANNEL_FUEL;
                    ID_CHANNEL_BURN;
                }
            }

            TRB_BIASED_SPLINE ID_VORTICITY_INTENSITY_MAPPING
            { ANIM ON; }
        }

        GROUP ID_TURBULENCE
        {
            DEFAULT 0;

            REAL ID_VELNOISE_INTENSITY
            {
                ANIM    ON;
                MIN     0;
                MAXSLIDER   1;
                STEP    0.01;
                UNIT    METER;
            }

            LONG ID_VELNOISE_INTENSITY_CHANNEL
            {
                ANIM OFF;
                CYCLE
                {
                    ID_CHANNEL_NONE;
                    ID_CHANNEL_DENS;
                    ID_CHANNEL_TEMP;
                    ID_CHANNEL_FUEL;
                    ID_CHANNEL_BURN;
                }
            }

            TRB_BIASED_SPLINE ID_VELNOISE_INTENSITY_MAPPING
            { ANIM ON; }

            REAL ID_VELNOISE_SMALLEST
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   10;
                STEP        0.01;
                UNIT        METER;
            }

            REAL ID_VELNOISE_LARGEST
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   10;
                STEP        0.01;
                UNIT        METER;
            }

            REAL ID_VELNOISE_SMALL_POWER
            {
                ANIM        ON;
                MIN         0;
                MAX         1;
                STEP        0.01;
            }

            BASETIME ID_VELNOISE_PERIOD
            {
                ANIM        ON;
                STEP        1;
                MIN         0;
            }
        }

        GROUP ID_SIMULATION_TEMPERATURE
        {
            DEFAULT 0;

            BOOL ID_SIM_TEMP   { ANIM OFF; }

            REAL ID_ADAPT_THRES_TEMP
            {
                ANIM        OFF;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.01;
                UNIT        REAL;
            }

            REAL ID_TEMP_DIFFUSION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            GROUP
            {
                COLUMNS 2;

                REAL ID_TEMP_DECAY
                {
                    ANIM        ON;
                    MIN         0;
                    MAX         100;
                    STEP        0.1;
                    UNIT        PERCENT;
                }

                BASETIME ID_TEMP_HALFLIFE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   100;
                    STEP        0.1;
                }
            }

            REAL ID_BUOYANCY
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   100;
                STEP        0.1;
                UNIT        METER;
            }

            VECTOR ID_BUOYANCY_DIRECTION
            {
                ANIM ON;
            }
        }

        GROUP ID_SIMULATION_SMOKE
        {
            DEFAULT 0;

            BOOL ID_SIM_DENS   { ANIM OFF; }

            REAL ID_ADAPT_THRES_DENS
            {
                ANIM        OFF;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.01;
                UNIT        REAL;
            }

            REAL ID_DENS_DIFFUSION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            GROUP
            {
                COLUMNS 2;

                REAL ID_DENS_DECAY
                {
                    ANIM        ON;
                    MIN         0;
                    MAX         100;
                    STEP        0.1;
                    UNIT        PERCENT;
                }

                BASETIME ID_DENS_HALFLIFE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   100;
                    STEP        0.1;
                }
            }

            REAL ID_GRAVITY
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   100;
                STEP        0.1;
                UNIT        METER;
            }

            VECTOR ID_GRAVITY_DIRECTION
            {
                ANIM ON;
            }
        }

        GROUP ID_SIMULATION_FUEL
        {
            DEFAULT 0;

            BOOL ID_SIM_FUEL   { ANIM OFF; }

            REAL ID_ADAPT_THRES_FUEL
            {
                ANIM        OFF;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.01;
                UNIT        REAL;
            }

            REAL ID_FUEL_DIFFUSION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            REAL ID_FUEL_DECAY
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.001;
            }

            LONG ID_FUELMASK_CHANNEL
            {
                ANIM OFF;
                CYCLE
                {
                    ID_CHANNEL_NONE;
                    ID_CHANNEL_DENS;
                    ID_CHANNEL_TEMP;
                    ID_CHANNEL_BURN;
                }
            }

            REAL ID_FUELMASK_SMOOTHING
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            TRB_BIASED_SPLINE ID_FUELMASK_MAPPING
            { ANIM ON; }

            REAL ID_EXPANSION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   100.0;
                STEP        0.1;
                UNIT        REAL;
            }

            REAL ID_HEAT_CREATION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.01;
                UNIT        REAL;
            }

            REAL ID_SOOT_CREATION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1.0;
                STEP        0.01;
                UNIT        REAL;
            }
        }

        GROUP ID_SIMULATION_BURN
        {
            DEFAULT 0;

            BOOL ID_SIM_BURN   { ANIM OFF; }

            REAL ID_ADAPT_THRES_BURN
            {
                ANIM        OFF;
                MIN         0;
                MAXSLIDER   1;
                STEP        0.01;
                UNIT        REAL;
            }

            REAL ID_BURN_DIFFUSION
            {
                ANIM        ON;
                MIN         0.0;
                MAXSLIDER   1;
                STEP        0.001;
                UNIT        METER;
            }

            LONG ID_BURN_DECAY_MODE
            {
                ANIM OFF;
                CYCLE
                {
                    ID_LINEAR;
                    ID_EXPONENTIAL;
                }
            }

            GROUP
            {
                COLUMNS 2;

                REAL ID_BURN_DECAY
                {
                    ANIM        ON;
                    MIN         0;
                    MAX         100;
                    STEP        0.1;
                    UNIT        PERCENT;
                }

                BASETIME ID_BURN_HALFLIFE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   100;
                    STEP        0.1;
                }
            }

            REAL ID_BURN_DECAY_LINEAR
            {
                ANIM        ON;
                MIN         0;
                MAX         100;
                STEP        0.1;
                UNIT        REAL;
            }
        }
    }

    GROUP ID_EDITOR_RENDERING
    {
        DEFAULT	0;

        BOOL ID_SHOW_BBOXES
        {}

        BOOL ID_SHOW_GRID
        {}

        SEPARATOR { LINE; }

        STATICTEXT ID_VIEWPORT_OPENGL_WARNING { SCALE_H; }
        BOOL ID_VIEWPORT_ACTIVATE_OPENGL { ANIM OFF; }

        LONG ID_EDITOR_CHANNEL
        {
            ANIM OFF;
            CYCLE
            {
                ID_CHANNEL_DENS;
                ID_CHANNEL_TEMP;
                ID_CHANNEL_FUEL;
                ID_CHANNEL_BURN;
                ID_CHANNEL_SOLID;
                ID_CHANNEL_VELU;
                ID_CHANNEL_VELV;
                ID_CHANNEL_VELW;
            }
        }

        LONG ID_PREVIEW_SHADER
        {
            ANIM OFF;
            CYCLE
            {
                ID_PRM_NONE;
                ID_PRM_FIRE_SHADER;
                ID_PRM_SMOKE_SHADER;
            }
        }

        BOOL ID_PREVIEW_USE_SHADER_COLOR { ANIM OFF; }

        LONG ID_EDITOR_RENDER_MODE
        {
            ANIM ON;
            CYCLE
            {
                ID_VIEWPORT_PREVIEW_NONE;
                ID_VIEWPORT_PREVIEW_MULTISLICE;
                ID_VIEWPORT_PREVIEW_SLICE;
            }
        }

        BOOL ID_VIEWPORT_LERP_TEXTURES { ANIM OFF; }

        LONG ID_EDITOR_SLICE_ORIENTATION
        {
            ANIM ON;
            CYCLE
            {
                ID_SLICE_ORIENTATION_MAJOR_AXIS;
                ID_SLICE_ORIENTATION_PERSPECTIVE;
            }
        }

        REAL ID_EDITOR_SLICE_POSITION
        {
            CUSTOMGUI   REALSLIDER;
            ANIM        ON;
            MIN         -1;
            MAX         1;
            STEP        0.01;
            UNIT        REAL;
        }

        REAL ID_VIEWPORT_SLICES_PER_VOXEL
        {
            CUSTOMGUI   REALSLIDER;
            ANIM OFF;
            MIN 0;
            MAX 128;
            MAXSLIDER 4;
            STEP 0.1;
            UNIT REAL;
        }

        REAL ID_VIEWPORT_SLICES_OPACITY
        {
            CUSTOMGUI   REALSLIDER;
            ANIM OFF;
            MIN 0;
            MAXSLIDER 100;
            STEP 0.1;
            UNIT REAL;
        }

        SEPARATOR { LINE; }

        GROUP
        {
            COLUMNS 2;

            BUTTON ID_EDITOR_COLOR_FIT
            { ANIM OFF; }

            BOOL ID_EDITOR_COLOR_AUTOFIT
            {
                ANIM ON;
            }
        }

        REAL ID_EDITOR_COLOR_MIN
        {
            CUSTOMGUI   REALSLIDER;
            ANIM        ON;
            MINSLIDER   -1;
            MAXSLIDER   1;
            STEP        0.001;
            UNIT        REAL;
        }

        REAL ID_EDITOR_COLOR_MAX
        {
            CUSTOMGUI   REALSLIDER;
            ANIM        ON;
            MINSLIDER   -1;
            MAXSLIDER   1;
            STEP        0.001;
            UNIT        REAL;
        }

        GRADIENT ID_EDITOR_GRADIENT
        {
            COLOR;
            ALPHA;
            ANIM        ON;
        }
    }

    GROUP ID_RENDERING
    {
        DEFAULT	0;

        GROUP ID_RENDERING_GENERAL
        {
            DEFAULT 0;

            REAL ID_FRAME_OFFSET
            {
                ANIM    ON;
                STEP    1;
                MIN     -9999;
                MAX     9999;
                MINSLIDER   -10;
                MAXSLIDER   10;
            }

            REAL ID_FRAME_STEP
            {
                ANIM    ON;
                STEP    1;
                MIN     -9999;
                MAX     9999;
                MINSLIDER   -2;
                MAXSLIDER   2;
            }

            REAL ID_RAY_STEP
            {
                MIN         0.001;
                MINSLIDER   1;
                MAX         100;
                STEP        1;
                UNIT        PERCENT;
            }

            REAL ID_RAY_EXT_STEP
            {
                MIN         0.001;
                MINSLIDER   1;
                MAX         100;
                STEP        1;
                UNIT        PERCENT;
            }

            LONG ID_INTERPOLATION
            {
                CYCLE
                {
                    ID_INTERPOLATION_FAST;
                    ID_INTERPOLATION_SMOOTH;
                    ID_INTERPOLATION_SHARP;
                }
            }

            BOOL ID_USE_DIST_OPAQ_MAPPING
            { ANIM OFF; }

            TRB_BIASED_SPLINE ID_DIST_OPAQ_MAPPING
            { ANIM ON; }
        }

        GROUP ID_SHADERS_SMOKE
        {
            DEFAULT 0;

            GROUP ID_SHADERS_SMOKE_MAPPING
            {
                DEFAULT 1;

                LONG ID_SSS_CHANNEL
                {
                    ANIM OFF;
                    CYCLE
                    {
                        ID_CHANNEL_NONE;
                        ID_CHANNEL_DENS;
                        ID_CHANNEL_TEMP;
                        ID_CHANNEL_FUEL;
                        ID_CHANNEL_BURN;
                        ID_CHANNEL_GRADIENTX;
                        ID_CHANNEL_GRADIENTY;
                        ID_CHANNEL_GRADIENTZ;
                    }
                }

                REAL ID_SSS_SMOOTHING
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER     10;
                    STEP    0.01;
                    UNIT    METER;
                }

                TRB_BIASED_SPLINE ID_SSS_INTENSITY
                { ANIM ON; }
            }

            GROUP ID_SHADERS_SMOKE_OPACITY
            {
                DEFAULT 0;

                LONG ID_SS_OPACITY_CHANNEL
                {
                    ANIM OFF;
                    CYCLE
                    {
                        ID_CHANNEL_NONE;
                        ID_CHANNEL_BURN;
                        ID_CHANNEL_DENS;
                        ID_CHANNEL_FUEL;
                        ID_CHANNEL_TEMP;
                        ID_CHANNEL_GRADIENTX;
                        ID_CHANNEL_GRADIENTY;
                        ID_CHANNEL_GRADIENTZ;
                    }
                }

                REAL ID_SS_OPACITY_SMOOTHING
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER     10;
                    STEP    0.01;
                    UNIT    METER;
                }

                TRB_BIASED_SPLINE ID_SS_OPACITY_MAPPING
                { ANIM ON; }
            }

            GROUP ID_SHADERS_SMOKE_COLOR
            {
                DEFAULT 1;

                REAL ID_SS_THICKNESS
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        REAL;
                }

                REAL ID_SS_BRIGHTNESS
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   200;
                    STEP        0.1;
                    UNIT        PERCENT;
                }

                GRADIENT ID_SS_SCATTERING
                {
                    COLOR;
                    ANIM        ON;
                }
            }

            GROUP ID_SMOKE_SUBGRID_DETAIL
            {
                REAL ID_SMOKE_VELOCITY_DISPLACEMENT
                {
                    ANIM        ON;
                    MINSLIDER   -10;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        REAL;
                }

                SEPARATOR { LINE; }

                REAL ID_SMOKE_SUBGRID_INTENSITY
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER   1;
                    STEP    0.01;
                    UNIT    METER;
                }

                REAL ID_SMOKE_SUBGRID_SMALLEST
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        METER;
                }

                REAL ID_SMOKE_SUBGRID_LARGEST
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        METER;
                }

                REAL ID_SMOKE_SUBGRID_SMALL_POWER
                {
                    ANIM        ON;
                    MIN         0;
                    MAX         1;
                    STEP        0.01;
                }

                BASETIME ID_SMOKE_SUBGRID_PERIOD
                {
                    ANIM        ON;
                    STEP        1;
                    MIN         0;
                }
            }

            GROUP ID_SMOKE_LIGHTING_GROUP
            {
                DEFAULT 1;

                LONG ID_LIGHTING_MODE
                {
                    CYCLE
                    {
                        ID_LIGHTING_NONE;
                        ID_LIGHTING_FAST;
                        ID_LIGHTING_SMOOTH;
                        ID_LIGHTING_BRUTE;
                    }
                }

                REAL ID_SCATTERING_ANISOTROPY
                {
                    CUSTOMGUI   REALSLIDER;
                    ANIM        ON;
                    MIN         -1;
                    MAX         1;
                    STEP        0.01;
                    UNIT        REAL;
                }

                REAL ID_ILLUMINATION_RES
                {
                    ANIM OFF;
                    MIN         0.001;
                    MAXSLIDER   4;
                    STEP        0.1;
                    UNIT PERCENT;
                }

                BOOL ID_MULTISCATTER_ENABLED
                { ANIM OFF; }

                LONG ID_MULTISCATTER_DEPTH
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                }

                LONG ID_MULTISCATTER_DIRRES
                {
                    ANIM        ON;
                    MIN         1;
                    MAXSLIDER   10;
                }

                REAL ID_MULTISCATTER_FALLOFF
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   1;
                    UNIT        PERCENT;
                }

                REAL ID_MULTISCATTER_SMOKE_BRIGHTNESS
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   1;
                    UNIT        PERCENT;
                }

                REAL ID_MULTISCATTER_FIRE_BRIGHTNESS
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   1;
                    UNIT        PERCENT;
                }
            }
        }

        GROUP ID_SHADERS_FIRE
        {
            DEFAULT 0;

            GROUP ID_SHADERS_FIRE_MAPPING
            {
                DEFAULT 1;

                LONG ID_SFCS_CHANNEL
                {
                    ANIM OFF;
                    CYCLE
                    {
                        ID_CHANNEL_NONE;
                        ID_CHANNEL_TEMP;
                        ID_CHANNEL_BURN;
                        ID_CHANNEL_FUEL;
                        ID_CHANNEL_DENS;
                        ID_CHANNEL_GRADIENTX;
                        ID_CHANNEL_GRADIENTY;
                        ID_CHANNEL_GRADIENTZ;
                    }
                }

                REAL ID_SFCS_SMOOTHING
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER     10;
                    STEP    0.01;
                    UNIT    METER;
                }

                REAL ID_SF_FIRE_CLEARS_SMOKE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   1;
                    STEP        0.001;
                }

                TRB_BIASED_SPLINE ID_SFCS_INTENSITY
                { ANIM ON; }
            }

            GROUP ID_SHADERS_FIRE_OPACITY
            {
                DEFAULT 0;

                LONG ID_SFOS_CHANNEL
                {
                    ANIM OFF;
                    CYCLE
                    {
                        ID_CHANNEL_NONE;
                        ID_CHANNEL_BURN;
                        ID_CHANNEL_DENS;
                        ID_CHANNEL_FUEL;
                        ID_CHANNEL_TEMP;
                        ID_CHANNEL_GRADIENTX;
                        ID_CHANNEL_GRADIENTY;
                        ID_CHANNEL_GRADIENTZ;
                    }
                }

                REAL ID_SFOS_SMOOTHING
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER     10;
                    STEP    0.01;
                    UNIT    METER;
                }

                TRB_BIASED_SPLINE ID_SF_OPACITY
                { ANIM ON; }
            }

            GROUP ID_SHADERS_FIRE_COLOR
            {
                DEFAULT 1;

                REAL ID_SF_OPACITY_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        REAL;
                }

                LONG ID_SF_COLOR_MODE
                {
                    CYCLE
                    {
                        ID_SF_MODE_MANUAL;
                        ID_SF_MODE_BLACKBODY;
                    }
                }

                SEPARATOR { LINE; }

                GRADIENT ID_FIRE_COLOR
                {
                    COLOR;
                    ANIM        ON;
                }

                REAL ID_FIRE_COLOR_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   100;
                    STEP        1;
                    UNIT        PERCENT;
                }

                GROUP
                {
                    COLUMNS 2;

                    BUTTON ID_BLACKBODY_TO_MANUAL
                    { ANIM OFF; }

                    TRB_GRADIENT_DISPLAY ID_SFCS_BLACKBODY_GRADIENT
                    { ANIM OFF; FIT_H; SCALE_H; }
                }

                REAL ID_SFCS_BLACKBODY_MIN_TEMP
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10000;
                    STEP        10;
                    UNIT        REAL;
                }

                REAL ID_SFCS_BLACKBODY_MAX_TEMP
                {
                    ANIM        ON;
                    MIN         1;
                    MAXSLIDER   10000;
                    STEP        10;
                    UNIT        REAL;
                }

                REAL ID_SFCS_BLACKBODY_WHITE_POINT
                {
                    ANIM        ON;
                    MIN         0.00001;
                    MAXSLIDER   1000;
                    STEP        0.01;
                }

                REAL ID_SFCS_BLACKBODY_DAMPING
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                }

                REAL ID_SFCS_BLACKBODY_RED_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   400;
                    STEP        1;
                    UNIT        PERCENT;
                }

                REAL ID_SFCS_BLACKBODY_GREEN_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   400;
                    STEP        1;
                    UNIT        PERCENT;
                }

                REAL ID_SFCS_BLACKBODY_BLUE_SCALE
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   400;
                    STEP        1;
                    UNIT        PERCENT;
                }
            }

            GROUP ID_FIRE_SUBGRID_DETAIL
            {
                REAL ID_FIRE_VELOCITY_DISPLACEMENT
                {
                    ANIM        ON;
                    MINSLIDER   -10;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        REAL;
                }

                SEPARATOR { LINE; }

                REAL ID_FIRE_SUBGRID_INTENSITY
                {
                    ANIM    ON;
                    MIN     0;
                    MAXSLIDER   1;
                    STEP    0.01;
                    UNIT    METER;
                }

                REAL ID_FIRE_SUBGRID_SMALLEST
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        METER;
                }

                REAL ID_FIRE_SUBGRID_LARGEST
                {
                    ANIM        ON;
                    MIN         0;
                    MAXSLIDER   10;
                    STEP        0.01;
                    UNIT        METER;
                }

                REAL ID_FIRE_SUBGRID_SMALL_POWER
                {
                    ANIM        ON;
                    MIN         0;
                    MAX         1;
                    STEP        0.01;
                }

                BASETIME ID_FIRE_SUBGRID_PERIOD
                {
                    ANIM        ON;
                    STEP        1;
                    MIN         0;
                }
            }
        }
    }
}
