#include <iostream>
#include <unistd.h>
#include "ELinkMessageMap.hpp"

int main(int argc, char* argv[]) {
    try {
        // Ensure that a UIO device name or number is provided
        if (argc != 2) {
            std::cerr << "Usage: " << argv[0] << " <UIO device number or name>" << std::endl;
            return 1;
        }

        ELinkMessageMap* device;

        // Check if the argument is a number or a string (device name)
        try {
            unsigned int devnum = std::stoi(argv[1]);
            device = new ELinkMessageMap(devnum);
        } catch (const std::invalid_argument& e) {
            device = new ELinkMessageMap(argv[1]);
        }



        //Readout MOPS 
        device->writeControlnByte01CANCode(0x60);
        device->writeControlnByte01NodeId(0x00);
        device->writeControlnByte01HubSelect(0x00);
        device->writeControlnByte01Byte0(0x40);
        device->writeControlnByte01IndexPart1(0x00);
        device->writeByte25IndexPart2(0x00);
        device->writeByte25SubIndex(0x00);
        device->writeByte25Byte4(0x00);
        device->writeByte25Byte5(0x00);
        device->writeByte67Byte6(0x00);
        device->writeByte67Byte7(0x00);
        device->writeControlnByte01ELinkWriteEn(0x1);

        usleep(50000);/*sleep for 50ms*/
        device->writeControlnByte01ELinkWriteEn(0x0);

        while(device->readReadReg0ELinkReadEn() == 0x0){
            std::cout << "Waiting for MOPS to be read" << std::endl;
        }
        //Readback value
        uint32_t MOPS = device->readReadReg0NodeId();
        std::cout << "MOPS: " << MOPS << std::endl;

        uint32_t byte0 = device->readReadReg0Byte0();
        std::cout << "Byte0: " << byte0 << std::endl;

        uint32_t Index1 = device->readReadReg0IndexPart1();
        uint32_t Index2 = device->readReadReg1IndexPart2();
        std::cout << "Index: " << Index1 << Index2 << std::endl;

        uint32_t SubIndex = device->readReadReg1SubIndex();
        std::cout << "SubIndex: " << SubIndex << std::endl;

        uint32_t Byte4 = device->readReadReg1Byte4();
        uint32_t Byte5 = device->readReadReg1Byte5();
        std::cout << "Byte45: " << Byte4 << Byte5 << std::endl;

        uint32_t Byte6 = device->readReadReg2Byte6();
        uint32_t Byte7 = device->readReadReg2Byte7();
        std::cout << "Byte67: " << Byte6 << Byte7 << std::endl;

        // Clean up
        delete device;
    } catch (const std::exception& ex) {
        std::cerr << "Error: " << ex.what() << std::endl;
        return 1;
    }

    return 0;
}
