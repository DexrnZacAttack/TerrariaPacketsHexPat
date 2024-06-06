#pragma combinerName PlayerInventorySlot
struct PlayerInventorySlot {
    u8 playerID;
    u16 slotID;
    u16 stack;
    PrefixIDs prefix;
    ItemIDs itemID;
} [[name(std::string::to_string(prefix) + " " + std::string::to_string(itemID) + " (" + std::string::to_string(stack) + ")")]];