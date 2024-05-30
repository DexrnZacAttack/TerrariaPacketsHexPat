struct sendTileSquare {
    u16 size;
    if ((size & 0x8000) != 0) {
        u8 tileChangeType;
    }
    u16 tileX;
    u16 tileY;
    if ((size & 0x8000) != 0) {
        u8 tiles[parent.packetLength - 10];
    } else {
        u8 tiles[parent.packetLength - 9];
    }
};