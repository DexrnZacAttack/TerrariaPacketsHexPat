#pragma endian little

import std.string;
combine "./types.hexpat";
combine "./packets/netModule.hexpat";
combine "./packets/C2S/connectRequest.hexpat";
combine "./packets/S2C/disconnect.hexpat";
combine "./packets/S2C/setUserSlot.hexpat";
combine "./packets/Sync/playerInfo.hexpat";
combine "./packets/Sync/playerInventorySlot.hexpat";
combine "./packets/C2S/requestWorldData.hexpat";
combine "./packets/S2C/worldInfo.hexpat";
combine "./packets/C2S/requestEssentialTiles.hexpat";
combine "./packets/S2C/status.hexpat";
combine "./packets/S2C/sendSection.hexpat";
combine "./packets/S2C/sectionTileFrame.hexpat";
combine "./packets/C2S/spawnPlayer.hexpat";
combine "./packets/Sync/updatePlayer.hexpat";
combine "./packets/S2C/playerActive.hexpat";
combine "./packets/Sync/playerHP.hexpat";
combine "./packets/Sync/modifyTile.hexpat";
combine "./packets/S2C/time.hexpat";
combine "./packets/Sync/doorToggle.hexpat";
combine "./packets/C2S/clientUUID.hexpat";

enum packets : u8 {
    connectRequest = 0x01,
    disconnect = 0x02,
    setUserSlot = 0x03,
    playerInfo = 0x04,
    playerInventorySlot = 0x05,
    requestWorldData = 0x06,
    worldInfo = 0x07,
    requestEssentialTiles = 0x08,
    status = 0x09,
    sendSection = 0x0A,
    sectionTileFrame = 0x0B,
    spawnPlayer = 0x0C,
    updatePlayer = 0x0D,
    playerActive = 0x0E,
    playerHP = 0x10,
    modifyTile = 0x11,
    clientUUID = 0x44
};

struct TerrariaPacket {
u16 packetLength;
packets packetID [[name("Packet ID")]];

    if (packetID == packets::connectRequest) {
        connectRequest cr;
    } else if (packetID == packets::disconnect) {
        disconnect dc;
    } else if (packetID == packets::setUserSlot) {
        setUserSlot sus;
    } else if (packetID == packets::playerInfo) {
        playerInfo pi;
    } else if (packetID == packets::playerInventorySlot) {
        PlayerInventorySlot pis;
    } else if (packetID == packets::requestWorldData) {
        requestWorldData rwd;
    } else if (packetID == packets::worldInfo) {
        worldInfo wi;
    } else if (packetID == packets::requestEssentialTiles) {
        requestEssentialTiles ret;
    } else if (packetID == packets::status) {
        status s;
    } else if (packetID == packets::sendSection) {
        sendSection ss;
    } else if (packetID == packets::sectionTileFrame) {
        sectionTileFrame stf;
    } else if (packetID == packets::spawnPlayer) {
        spawnPlayer sp;
    } else if (packetID == packets::updatePlayer) {
        updatePlayer up;
    } else if (packetID == packets::playerActive) {
        playerActive pa;
    } else if (packetID == packets::playerHP) {
        playerHP ph;
    } else if (packetID == packets::modifyTile) {
        modifyTile mt;
    } else if (packetID == packets::clientUUID) {
        clientUUID cu;
    }
     
};

TerrariaPacket packet @ 0x00;