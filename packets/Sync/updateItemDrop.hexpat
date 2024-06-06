#pragma combinerName updateItemDrop
enum NoDelay : u8 {
    ownIgnore = 0,
    ownTime = 100
};

struct updateItemDrop {
    ItemIDs itemID;
    float posX;
    float posY;
    float velX;
    float velY;
    s16 stackSize;
    PrefixIDs prefix;
    NoDelay noDelay;
    ItemIDs itemNetID;
} [[name(std::string::to_string(prefix) + " " + std::string::to_string(itemNetID) + " (" + std::string::to_string(stackSize) + ")")]];