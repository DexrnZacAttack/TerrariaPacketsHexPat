#pragma combinerName npcUpdate
bitfield NPCFlags1 {
    DIRECTION : 1;
    DIRECTION_Y : 2;
    AI_0 : 4;
    AI_1 : 8;
    AI_2 : 16;
    AI_3 : 32;
    SPRITE_DIRECTION : 64;
    LIFE_MAX : 128;
};

bitfield NPCFlags2 {
    STATS_SCALED : 1;
    SPAWNED_FROM_STATUE : 2;
    STRENGTH_MULTIPLIER : 4; // I guess if the npc book thing has been used.
};

struct npcUpdate {
    s16 npcID;
    float posX;
    float posY;
    float velX;
    float velY;
    u16 target; // "Notes: Player ID" ?????
    NPCFlags1 npcFlags1;
    NPCFlags2 npcFlags2;
    if (npcFlags1.AI_0) {
        float AI_0;
    }
    if (npcFlags1.AI_1) {
        float AI_1;
    }
    if (npcFlags1.AI_2) {
        float AI_2;
    }
    if (npcFlags1.AI_3) {
        float AI_3;
    }
    s16 npcNetID;
    if (npcFlags2.STATS_SCALED) {
        u8 playerCountForMultiplayerDifficultyOverride;
    }
    if (npcFlags2.STRENGTH_MULTIPLIER) {
        float strengthMultiplier;
    }
    if (npcFlags1.LIFE_MAX != true) {
        u8 lifeSize;
    }
    if (npcFlags1.LIFE_MAX != true) {
        if (lifeSize < 256)
            u8 lifeSize;
        if (lifeSize < 65536)
            s16 lifeSize;
        if (lifeSize > 65535)
            s32 lifeSize;
    }
};