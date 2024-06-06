#pragma combinerName doorToggle
enum doorAction : u8 {
    OPEN_DOOR = 0,
    CLOSE_DOOR = 1,
    OPEN_TRAPDOOR = 2,
    CLOSE_TRAPDOOR = 3,
    OPEN_TALL_GATE = 4,
    CLOSE_TALL_GATE = 5
};

struct doorToggle {
    doorAction action;
    u16 tileX;
    u16 tileY;
    u8 direction; // DO THIS LATER.
};