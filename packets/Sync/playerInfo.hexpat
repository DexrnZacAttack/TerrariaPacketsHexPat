#pragma combinerName playerInfo
enum DifficultyFlags : u8 {
    SOFTCORE = 1 << 0,
    MEDIUMCORE = 1 << 1,
    EXTRA_ACCESSORY = 1 << 2,
    HARDCORE = 1 << 3
};

enum PlayerFlags : u8 {
    USING_BIOME_TORCHES = 1 << 0,
    HAPPY_FUN_TORCH_TIME = 1 << 1,
    UNLOCKED_BIOME_TORCHES = 1 << 2,
    UNLOCKED_SUPER_CART = 1 << 3,
    ENABLED_SUPER_CART = 1 << 4
};

enum PermConsumables : u8 {
    USED_AEGIS_CRYSTAL = 1 << 0,
    USED_AEGIS_FRUIT = 1 << 1,
    USED_ARCANE_CRYSTAL = 1 << 2,
    USED_GALAXY_PEARL = 1 << 3,
    USED_GUMMY_WORM = 1 << 4,
    USED_AMBROSIA = 1 << 5,
    ATE_ARTISAN_BREAD = 1 << 6
};

struct playerInfo {
    u8 playerID;
    u8 skinVarient;
    u8 hairType;
    if (hairType > 162) {hairType = 0;}
    u8 nameLength;
    char name[nameLength];
    u8 hairDye;
    u8 hideVisuals;
    u8 hideVisuals2;
    u8 hideMisc;
    Color hairColor;
    Color skinColor;
    Color eyeColor;
    Color shirtColor;
    Color undershirtColor;
    Color pantsColor;
    Color shoeColor;
    DifficultyFlags difficultyFlags;
    PlayerFlags playerFlags;
    PermConsumables permConsumables;
};