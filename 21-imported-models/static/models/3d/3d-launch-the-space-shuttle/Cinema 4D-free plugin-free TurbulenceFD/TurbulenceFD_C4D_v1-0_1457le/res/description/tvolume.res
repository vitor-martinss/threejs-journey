CONTAINER Tvolume
{
    NAME Tvolume;
    INCLUDE Tbase;

    GROUP ID_TAG_EMITTER
    {
        DEFAULT 1;

        BOOL ID_EMITTER_ACTIVE
        { ANIM OFF; }

        GROUP ID_GENERAL_GROUP
        {
            DEFAULT 1;

            REAL ID_VOXELIZATION_RADIUS
            {
                ANIM    ON;
                MIN         0;
                MAXSLIDER   10;
                STEP    0.01;
                UNIT    METER;
            }

            BOOL ID_OBSTACLE
            {
                ANIM    ON;
            }

            BOOL ID_VOXELIZATION_FILL
            {
                ANIM    ON;
            }

            IN_EXCLUDE ID_SELECTION_LIST
            {
                ANIM    ON;
                ACCEPT { Tpolygonselection; }
            }
        }

        GROUP ID_TEXTURE_GROUP
        {
            DEFAULT 0;

            SHADERLINK ID_TAG_SHADER {}

            LONG ID_TEXTURE_CHANNEL
            {
                ANIM ON;

                CYCLE
                {
                    ID_TEXTURE_CHANNEL_NONE;
                    ID_TEXTURE_CHANNEL_LUMINANCE;
                    ID_TEXTURE_CHANNEL_TRANSPARENCY;
                    ID_TEXTURE_CHANNEL_ALPHA;
                    ID_TEXTURE_CHANNEL_COLOR;
                }
            }

            BOOL ID_USE_VERTEX_MAPS
            {
                ANIM ON;
            }
        }

        GROUP ID_PARTICLE_GROUP
        {
            LONG ID_PARTICLE_PROPERTY
            {
                CYCLE
                {
                    ID_PART_PROP_NONE;
                    ID_PART_PROP_AGE;
                    ID_PART_PROP_VEL;
                    ID_PART_PROP_MAS;
                    ID_PART_PROP_SIZ;
                }
            }

            TRB_BIASED_SPLINE ID_PARTICLE_PROPERTY_MAPPING
            { ANIM ON; }
        }

        GROUP ID_FORCE_GROUP
        {
            REAL ID_EMITTER_VELOCITY_WEIGHT
            {
                ANIM        ON;
                MIN         0;
                MAXSLIDER   2;
                STEP        0.01;
            }

            REAL ID_NORMAL_FORCE
            {
                ANIM    ON;
                MINSLIDER   0;
                MAXSLIDER   300;
                STEP    0.01;
                UNIT    METER;
            }

            VECTOR ID_DIR_FORCE
            {
                ANIM    ON;
                STEP    0.01;
                UNIT    METER;
            }

            REAL ID_DIVERGENCE
            {
                ANIM    ON;
                MINSLIDER   -100;
                MAXSLIDER   100;
                STEP    0.1;
                UNIT    REAL;
            }
        }

        GROUP ID_CHANNELS_GROUP
        {
            DEFAULT 1;

            LONG ID_TEMPERATURE_MODE
            {
                ANIM ON;
                CYCLE
                {
                    ID_SOURCE_MODE_ADD;
                    ID_SOURCE_MODE_SET;
                }
            }

            REAL ID_TEMPERATURE
            {
                ANIM    ON;
                MINSLIDER   0;
                MAXSLIDER   1;
                STEP    0.01;
                UNIT    REAL;
            }

            LONG ID_DENSITY_MODE
            {
                ANIM ON;
                CYCLE
                {
                    ID_SOURCE_MODE_ADD;
                    ID_SOURCE_MODE_SET;
                }
            }

            REAL ID_DENSITY
            {
                ANIM    ON;
                MINSLIDER   0;
                MAXSLIDER   1;
                STEP    0.01;
                UNIT    REAL;
            }

            LONG ID_FUEL_MODE
            {
                ANIM ON;
                CYCLE
                {
                    ID_SOURCE_MODE_ADD;
                    ID_SOURCE_MODE_SET;
                }
            }

            REAL ID_FUEL
            {
                ANIM    ON;
                MINSLIDER   0;
                MAXSLIDER   1;
                STEP    0.01;
                UNIT    REAL;
            }

            LONG ID_BURN_MODE
            {
                ANIM ON;
                CYCLE
                {
                    ID_SOURCE_MODE_ADD;
                    ID_SOURCE_MODE_SET;
                }
            }

            REAL ID_BURN
            {
                ANIM    ON;
                MINSLIDER   0;
                MAXSLIDER   1;
                STEP    0.01;
                UNIT    REAL;
            }
        }
    }
}
