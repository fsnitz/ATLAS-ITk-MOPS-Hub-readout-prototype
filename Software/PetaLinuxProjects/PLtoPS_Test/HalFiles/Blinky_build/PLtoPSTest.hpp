#pragma once
#include <stdint.h>
#include <string> // std::to_string

struct uio_info_t; // forward-decl

// for register map: PLtoPS_Test

class PLtoPSTest
{

public:
  /** Opens uio-mapped component by uio device number */
  PLtoPSTest (unsigned int devnum);
  /** Opens uio-mapped component by uio device name */
  PLtoPSTest (const std::string& uioDeviceName);
  
  virtual ~PLtoPSTest ();

  
    // at register: Interface
                  uint32_t readInterfaceLED ();
                    void writeInterfaceLED (uint32_t value);
          
  
    // at register: Heartbeat
                  uint32_t readHeartbeatHeartbeat ();
                
  
private:
  uio_info_t* m_uioInfo;
                                    uint32_t _isolateBitsForRead(uint32_t value, uint32_t bitWidth, uint8_t bitOffset);
  uint32_t _isolateBitsForWrite(uint32_t value, uint32_t bitWidth, uint8_t bitOffset, uint32_t oldValue);
};