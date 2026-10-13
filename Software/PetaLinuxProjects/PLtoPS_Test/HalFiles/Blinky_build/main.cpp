#include <iostream>
#include "PLtoPSTest.hpp"

int main(int argc, char* argv[]) {
    try {
        // Ensure that a UIO device name or number is provided
        if (argc != 2) {
            std::cerr << "Usage: " << argv[0] << " <UIO device number or name>" << std::endl;
            return 1;
        }

        PLtoPSTest* device;

        // Check if the argument is a number or a string (device name)
        try {
            unsigned int devnum = std::stoi(argv[1]);
            device = new PLtoPSTest(devnum);
        } catch (const std::invalid_argument& e) {
            device = new PLtoPSTest(argv[1]);
        }

        // Read the current state of the LED
        uint32_t currentLEDState = device->readInterfaceLED();
        std::cout << "Current LED State: " << currentLEDState << std::endl;

        // Toggle the LED state
        uint32_t newLEDState = !currentLEDState;
        device->writeInterfaceLED(newLEDState);
        std::cout << "New LED State: " << newLEDState << std::endl;


        // Read the current state of the LED
        uint32_t currentHeartbeatState = device->readHeartbeatHeartbeat();
        std::cout << "Current Heartbeat State: " << currentHeartbeatState << std::endl;
        
        // Clean up
        delete device;
    } catch (const std::exception& ex) {
        std::cerr << "Error: " << ex.what() << std::endl;
        return 1;
    }

    return 0;
}
