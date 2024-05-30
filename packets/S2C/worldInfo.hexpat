#pragma combinerName worldInfo
enum TimeInfo : u8 {
    DAY_TIME = 1,
    BLOOD_MOON = 2,
    ECLIPSE = 4
};

enum EventInfo1 : u8 {
    SHADOW_ORB_SMASHED = 0x01,
    DOWNED_BOSS_1 = 0x02,
    DOWNED_BOSS_2 = 0x04,
    DOWNED_BOSS_3 = 0x08,
    HARD_MODE = 0x10,
    DOWNED_CLOWN = 0x20,
    SERVER_SIDE_CHARACTER = 0x40,
    DOWNED_PLANT_BOSS = 0x80
};

enum EventInfo2 : u8 {
    MECH_BOSS_DOWNED = 0x01,
    MECH_BOSS_DOWNED_2 = 0x02,
    MECH_BOSS_DOWNED_3 = 0x04,
    MECH_BOSS_ANY_DOWNED = 0x08,
    CLOUD_BG = 0x10,
    CRIMSON = 0x20,
    PUMPKIN_MOON = 0x40,
    SNOW_MOON = 0x80
};

enum EventInfo3 : u8 {
    EXPERT_MODE = 0x01,
    FAST_FORWARD_TIME = 0x02,
    SLIME_RAIN = 0x04,
    DOWNED_SLIME_KING = 0x08,
    DOWNED_QUEEN_BEE = 0x10,
    DOWNED_FISHRON = 0x20,
    DOWNED_MARTIANS = 0x40,
    DOWNED_ANCIENT_CULTIST = 0x80
};

enum EventInfo4 : u8 {
    DOWNED_MOON_LORD = 0x01,
    DOWNED_PUMPKING = 0x02,
    DOWNED_MOURNING_WOOD = 0x04,
    DOWNED_ICE_QUEEN = 0x08,
    DOWNED_SANTANK = 0x10,
    DOWNED_EVERSCREAM = 0x20,
    DOWNED_GOLEM = 0x40,
    BIRTHDAY_PARTY = 0x80
};

enum EventInfo5 : u8 {
    DOWNED_PIRATES = 0x01,
    DOWNED_FROST_LEGION = 0x02,
    DOWNED_GOBLINS = 0x04,
    SANDSTORM = 0x08,
    DD2_EVENT = 0x10,
    DOWNED_DD2_TIER_1 = 0x20,
    DOWNED_DD2_TIER_2 = 0x40,
    DOWNED_DD2_TIER_3 = 0x80
};

enum EventInfo6 : u8 {
    COMBAT_BOOK_USED = 0x01,
    MANUAL_LANTERNS = 0x02,
    DOWNED_SOLAR_TOWER = 0x04,
    DOWNED_VORTEX_TOWER = 0x08,
    DOWNED_TOWER_NEBULA = 0x10,
    DOWNED_STARDUST_TOWER = 0x20,
    FORCE_HALLOWEEN_DAY = 0x40,
    FORCE_XMAS_DAY = 0x80
};

enum EventInfo7 : u8 {
    BOUGHT_CAT = 0x01,
    BOUGHT_DOG = 0x02,
    BOUGHT_BUNNY = 0x04,
    FREE_CAKE = 0x08,
    DRUNK_WORLD = 0x10,
    DOWNED_EMPRESS_OF_LIGHT = 0x20,
    DOWNED_QUEEN_SLIME = 0x40,
    GET_GOOD_WORLD = 0x80
};

enum TIER1ORE : u16 {
    COPPER = 7,
    TIN = 166
};

enum TIER2ORE : u16 {
    IRON = 6,
    LEAD = 167
};

enum TIER3ORE : u16 {
    SILVER = 9,
    TUNGSTON = 168
};

enum TIER4ORE : u16 {
    GOLD = 8,
    PLATINUM = 169
};

enum HMTIER1ORE : u16 {
    COBALT = 104,
    PALLADIUM = 221,
    UNDECIDED = 0xFFFF
};

enum HMTIER2ORE : u16 {
    MYTHRIL = 108,
    ORICHALCUM = 222,
    UNDECIDED = 0xFFFF
};

enum HMTIER3ORE : u16 {
    ADAMANTITE = 111,
    TITANIUM = 223,
    UNDECIDED = 0xFFFF
};

struct worldInfo {
    u32 time;
    TimeInfo timeInfo;
    u8 moonPhase;
    u16 maxTilesX;
    u16 maxTilesY;
    u16 spawnX;
    u16 spawnY;
    u16 surfaceLevel;
    u16 cavernLevel;
    u32 worldID;
    u8 worldNameStringLength;
    char worldName[worldNameStringLength];
    u8 gameMode;
    u8 worldUniqueID[16]; // maybe should use u128
    u64 worldGenVersion;
    u8 moonType;
    u8 treeBackground1; // NOT ON TSHOCK DOCS
    u8 treeBackground2; // NOT ON TSHOCK DOCS
    u8 treeBackground3; // NOT ON TSHOCK DOCS 
    u8 treeBackground4; // NOT ON TSHOCK DOCS
    u8 corruptionBackground;
    u8 jungleBackground;
    u8 snowBackground;
    u8 hallowBackground;
    u8 crimsonBackground;
    u8 desertBackground;
    u8 oceanBackground;
    u8 unk1Background;
    u8 unk2Background;
    u8 unk3Background;
    u8 unk4Background;
    u8 unk5Background;
    u8 iceBackStyle;
    u8 jungleBackStyle;
    u8 hellBackStyle;
    float windSpeedSet; // single but nonexistant so using float.
    u8 cloudNumber;
    // wtf do these mean? thanks tshock.
    u32 tree1;
    u32 tree2;
    u32 tree3;
    u8 treeStyle1;
    u8 treeStyle2;
    u8 treeStyle3;
    u8 treeStyle4;
    u32 caveBack1;
    u32 caveBack2;
    u32 caveBack3;
    u8 caveBackStyle1;
    u8 caveBackStyle2;
    u8 caveBackStyle3;
    u8 caveBackStyle4;
    u8 forest1TreeTopStyle;
    u8 forest2TreeTopStyle;
    u8 forest3TreeTopStyle;
    u8 forest4TreeTopStyle;
    u8 corruptionTreeTopStyle;
    u8 jungleTreeTopStyle;
    u8 snowTreeTopStyle;
    u8 hallowTreeTopStyle;
    u8 crimsonTreeTopStyle;
    u8 desertTreeTopStyle;
    u8 oceanTreeTopStyle;
    u8 glowingMushroomTreeTopStyle;
    u8 underworldTreeTopStyle;
    float rain;
    EventInfo1 eventInfo1;
    EventInfo2 eventInfo2;
    EventInfo3 eventInfo3;
    EventInfo4 eventInfo4;
    EventInfo5 eventInfo5;
    EventInfo6 eventInfo6;
    EventInfo7 eventInfo7;
    u8 sundialCooldown; // NOT ON TSHOCK DOCS
    u8 moondialCooldown; // NOT ON TSHOCK DOCS
    TIER1ORE copperOreTier;
    TIER2ORE ironOreTier;
    TIER3ORE silverOreTier;
    TIER4ORE goldOreTier;
    HMTIER1ORE cobaltOreTier;
    HMTIER2ORE mythrilOreTier;
    HMTIER3ORE adamantiteOreTier;
    s8 invasionType;
    u64 lobbyID;
    float sandstormSeverity;
};