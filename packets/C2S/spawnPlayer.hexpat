#pragma combinerName spawnPlayer
enum PlayerSpawnContext : u8 {
    REVIVE_FROM_DEATH = 0x00,
    SPAWNING_INTO_WORLD = 0x01,
    RECALL_FROM_ITEM = 0x02
};

struct spawnPlayer {
 u8 playerID;
 u16 spawnX;
 u16 spawnY;
 u32 respawnTimeRemaining;
 PlayerSpawnContext playerSpawnContext;
};