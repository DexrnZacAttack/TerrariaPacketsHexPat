#pragma combinerName netModule
enum NetModules : u16 {
    Liquid = 0, // S2C
    Text = 1, // Sync
    Ping = 2, // Sync
    Ambience = 3, // S2C
    Bestiary = 4, // S2C
    CreativeUnlocks = 5, // S2C
    CreativePowers = 6, // Sync
    CreativeUnlocksPlayerReport = 7, // C2S
    TeleportPylon = 8, // Sync
    Particles = 9, // Sync
    CreativePowerPermissions = 10 // S2C
};

struct NetModule {
    u16 netModuleID;
    NetModules type;
};

enum NetworkTextMode : u8 {
    LITERAL,
    FORMATTABLE,
    LOCALIZATION_KEY
};

struct NMNetworkText {
    NetworkTextMode mode;
    u8 textSize;
    char text[textSize];
    if (mode != NetworkTextMode.LITERAL) {
        u8 substitutionList;
        NMNetworkText nmt[substitutionList];
    }
};