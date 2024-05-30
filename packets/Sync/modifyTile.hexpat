#pragma combinerName modifyTile
enum Action : u8 {
    DESTROY_TILE = 0, // using destroy instead of kill because it sounds nicer.
    PLACE_TILE = 1,
    DESTROY_WALL = 2,
    PLACE_WALL = 3,
    DESTROY_TILE_NO_ITEM = 4, // I assume for like walking on dangerous dungeon blocks or something
    PLACE_WIRE_RED = 5, // using color names as there are 4 of these types, so assuming that they are colors.
    DESTROY_WIRE_RED = 6,
    HAMMER_TILE = 7, // using hammer instead of pound
    PLACE_ACTUATOR = 8,
    DESTROY_ACTUATOR = 9,
    PLACE_WIRE_GREEN = 10,
    DESTROY_WIRE_GREEN = 11,
    PLACE_WIRE_BLUE = 12,
    DESTROY_WIRE_BLUE = 13,
    SLOPE_TILE = 14,
    FRAME_TRACK = 15,
    PLACE_WIRE_YELLOW = 16,
    DESTROY_WIRE_YELLOW = 17,
    POKE_LOGIC_GATE = 18,
    ACTUATE = 19,
    DESTROY_TILE_2 = 20,
    REPLACE_TILE = 21,
    REPLACE_WALL = 22,
    SLOPE_HAMMER_TILE = 23

};

struct modifyTile {
    Action action;
    u16 tileX;
    u16 tileY;
    if (action == Action::DESTROY_TILE || action == Action::DESTROY_WALL || action == Action::DESTROY_TILE_NO_ITEM) {
        bool fail;
    } else if (action == Action::PLACE_TILE || action == Action::PLACE_WALL) {
        u8 type;
    } else if (action == Action::SLOPE_TILE) {
        u8 slope;
    } else if (action == Action::REPLACE_TILE || action == Action::REPLACE_WALL) {
        u16 type;
    }
    if (action == Action::PLACE_TILE) {
        u8 style;
    } else if (action == Action::REPLACE_TILE) {
        u8 style;
    }
};