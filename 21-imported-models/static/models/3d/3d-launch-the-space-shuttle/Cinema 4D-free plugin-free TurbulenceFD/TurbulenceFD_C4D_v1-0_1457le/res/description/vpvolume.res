CONTAINER VPvolume
{
    NAME VPvolume;
    INCLUDE VPbase;

    GROUP ID_VPMAIN
    {
        DEFAULT	1;

        BOOL ID_RAY_STEP_ADAPTIVE
        {}

        REAL ID_ADAPTIVE_THRESHOLD
        {
            MIN 0;
            MAX 1;
            UNIT REAL;
        }

        BOOL ID_USE_FLUID_MOTION_BLUR
        {}

        BOOL ID_DISTRIBUTE_CACHE_TO_TR_CLIENTS
        {}
    }
}
