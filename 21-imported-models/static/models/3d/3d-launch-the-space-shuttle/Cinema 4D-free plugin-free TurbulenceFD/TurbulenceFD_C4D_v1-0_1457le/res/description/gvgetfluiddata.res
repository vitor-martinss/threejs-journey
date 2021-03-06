CONTAINER GVgetfluiddata
{
    NAME GVgetfluiddata;
    INCLUDE GVbase;

    GROUP ID_GVGFD_PROPERTIES
    {
        GVGENERALOBJECT GVGFD_VOLUME_OBJECT {INPORT; NEEDCONNECTION; CREATEPORT;}
        VECTOR GVGFD_POSITION {INPORT; NEEDCONNECTION;}
        
        VECTOR GVGFD_VELOCITY {OUTPORT;}
        REAL GVGFD_TEMPERATURE {OUTPORT;}
        REAL GVGFD_DENSITY {OUTPORT;}
        REAL GVGFD_FUEL {OUTPORT;}
        REAL GVGFD_FIRE {OUTPORT;}
    }
}
