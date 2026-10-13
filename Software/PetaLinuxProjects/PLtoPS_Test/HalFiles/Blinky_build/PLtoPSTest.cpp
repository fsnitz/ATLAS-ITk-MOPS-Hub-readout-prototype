#include <stdexcept>
#include <iostream>
#include <cmath>
#include <string.h>

#include <libuio.h>
#include <PLtoPSTest.hpp>

// for register map: PLtoPS_Test

/** Opens uio-mapped component by uio device number */
PLtoPSTest::PLtoPSTest (unsigned int devnum)
{
  m_uioInfo = uio_find_by_uio_num(devnum);
  if (!m_uioInfo)
    throw std::runtime_error("uio_find_by_uio_num with devnum " + std::to_string(devnum) + " failed.");

  std::cout << "PLtoPSTest ctr. " 
    << "Found requested device with ids: " << uio_get_major(m_uioInfo) << "," << uio_get_minor(m_uioInfo) << std::endl;
  if (uio_open(m_uioInfo))
    throw std::runtime_error("uio_open failed.");
}

/** Opens uio-mapped component by uio device number */
PLtoPSTest::PLtoPSTest (const std::string& uioDeviceName)
{
  char* c_string;
  c_string = strdup(uioDeviceName.c_str());
  m_uioInfo = uio_find_by_uio_name(c_string);
  if (!m_uioInfo)
    throw std::runtime_error("uio_find_by_uio_name with device name " + uioDeviceName + " failed.");

  std::cout << "PLtoPSTest ctr. " 
    << "Found requested device with ids: " << uio_get_major(m_uioInfo) << "," << uio_get_minor(m_uioInfo) << std::endl;
  if (uio_open(m_uioInfo))
    throw std::runtime_error("uio_open failed.");
}

PLtoPSTest::~PLtoPSTest ()
{
  uio_close(m_uioInfo);
}


  // at register: Interface
            uint32_t PLtoPSTest::readInterfaceLED ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          0 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 1;
        uint8_t bitOffset = 0;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
              void PLtoPSTest::writeInterfaceLED (uint32_t value){
        uint32_t oldValue(0);
        if (uio_read32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        &oldValue))
        {
          throw std::runtime_error("uio_read32 failed");
        };
        uint32_t bitWidth = 1;
        uint8_t bitOffset = 0;
        value = _isolateBitsForWrite(value, bitWidth, bitOffset, oldValue);

        if (uio_write32 (
        m_uioInfo, 
        0 /*map*/, 
        0 /* address offset */,
        value))
        {
          throw std::runtime_error("uio_write32 failed");
        };
      }
    
  

  // at register: Heartbeat
            uint32_t PLtoPSTest::readHeartbeatHeartbeat ()
      {
        uint32_t value (0);
        if (uio_read32 (
          m_uioInfo, 
          0 /*map*/, 
          4 /* address offset */,
          &value))
          {
            throw std::runtime_error("uio_read32 failed");
          };
        uint32_t bitWidth = 1;
        uint8_t bitOffset = 0;
        return(_isolateBitsForRead(value, bitWidth, bitOffset));
      }
        
  

// Takes value and returns the isolated bits specified by bitWidth and bitOffset. Shifts the bits to 0th position.
uint32_t PLtoPSTest::_isolateBitsForRead(uint32_t value, uint32_t bitWidth, uint8_t bitOffset){
    uint32_t bitMask = (1 << bitWidth) -1; // 1's on the first 'bitWidth' fields.
    bitMask = bitMask << bitOffset;
    return ((value & bitMask) >> bitOffset);
}

// Takes and old value and replaces the specified bits defined by value, bitWidth and bitOffset.
uint32_t PLtoPSTest::_isolateBitsForWrite(uint32_t value, uint32_t bitWidth, uint8_t bitOffset, uint32_t oldValue){
    uint32_t bitMask = (1 << bitWidth) -1; // 1's on the first 'bitWidth' fields.
    bitMask = bitMask << bitOffset;
    return((oldValue & (~bitMask)) | (value<<bitOffset)); // Return oldvalue with the correct bits replaced.
}