#pragma combinerName updatePlayer
enum Control : u8 {
    CONTROL_UP = 1,
    CONTROL_DOWN = 2,
    CONTROL_LEFT = 4,
    CONTROL_RIGHT = 8,
    CONTROL_JUMP = 16,
    CONTROL_USE_ITEM = 32,
    DIRECTION = 64
};

enum Pulley : u8 {
    PULLEY_ENABLED = 1,
    DIRECTION = 2,
    UPDATE_VELOCITY = 4,
    VORTEX_STEALTH_ACTIVE = 8,
    GRAVITY_DIRECTION = 16,
    SHIELD_RAISED = 32
};

enum Misc : u8 {
    HOVERING_UP = 1,
    VOID_VAULT_ENABLED = 2,
    SITTING = 4,
    DOWNED_DD2_EVENT = 8, // ?????
    IS_PETTING_ANIMAL = 16,
    IS_PETTING_SMALL_ANIMAL = 32,
    USED_POTION_OF_RETURN = 64,
    HOVERING_DOWN = 128
};

enum SleepingInfo : u8 {
    IS_SLEEPING
    // I guess that's all thats in here, or all that's documented.
};

struct updatePlayer {
    u8 playerID;
    Control control;
    Pulley pulley;
    Misc misc;
    SleepingInfo sleepingInfo;
    u8 selectedItem;
    float posX;
    float posY;
    float velX;
    float velY;
    float origPosX;
    float origPosY;
    float homePosX;
    float homePosY;
};