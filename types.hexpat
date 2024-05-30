#pragma combinerName Types
struct Color {
    u8 red;
    u8 green;
    u8 blue;
} [[color(std::format("{:02X}{:02X}{:02X}", red, green, blue))]];