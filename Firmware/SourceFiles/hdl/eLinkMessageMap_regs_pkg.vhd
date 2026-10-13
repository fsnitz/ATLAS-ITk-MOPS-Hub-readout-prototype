-- -----------------------------------------------------------------------------
-- 'eLinkMessageMap' Register Definitions
-- Revision: 69
-- -----------------------------------------------------------------------------
-- Generated on 2024-07-24 at 09:03 (UTC) by airhdl version 2023.07.1-936312266
-- -----------------------------------------------------------------------------
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
-- ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
-- -----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package eLinkMessageMap_regs_pkg is

    -- Revision number of the 'eLinkMessageMap' register map
    constant ELINKMESSAGEMAP_REVISION : natural := 69;

    -- Default base address of the 'eLinkMessageMap' register map
    constant ELINKMESSAGEMAP_DEFAULT_BASEADDR : unsigned(31 downto 0) := unsigned'(x"A0000000");

    -- Size of the 'eLinkMessageMap' register map, in bytes
    constant ELINKMESSAGEMAP_RANGE_BYTES : natural := 24;

    -- Register 'ControlnByte01'
    constant CONTROLNBYTE01_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000000"); -- address offset of the 'ControlnByte01' register

    -- Field 'ControlnByte01.eLinkWrite_en'
    constant CONTROLNBYTE01_ELINKWRITE_EN_BIT_OFFSET : natural := 0; -- bit offset of the 'eLinkWrite_en' field
    constant CONTROLNBYTE01_ELINKWRITE_EN_BIT_WIDTH : natural := 1; -- bit width of the 'eLinkWrite_en' field
    constant CONTROLNBYTE01_ELINKWRITE_EN_RESET : std_logic_vector(0 downto 0) := std_logic_vector'("0"); -- reset value of the 'eLinkWrite_en' field

    -- Field 'ControlnByte01.IndexPart1'
    constant CONTROLNBYTE01_INDEXPART1_BIT_OFFSET : natural := 1; -- bit offset of the 'IndexPart1' field
    constant CONTROLNBYTE01_INDEXPART1_BIT_WIDTH : natural := 8; -- bit width of the 'IndexPart1' field
    constant CONTROLNBYTE01_INDEXPART1_RESET : std_logic_vector(8 downto 1) := std_logic_vector'("00000000"); -- reset value of the 'IndexPart1' field

    -- Field 'ControlnByte01.Byte0'
    constant CONTROLNBYTE01_BYTE0_BIT_OFFSET : natural := 9; -- bit offset of the 'Byte0' field
    constant CONTROLNBYTE01_BYTE0_BIT_WIDTH : natural := 8; -- bit width of the 'Byte0' field
    constant CONTROLNBYTE01_BYTE0_RESET : std_logic_vector(16 downto 9) := std_logic_vector'("00000000"); -- reset value of the 'Byte0' field

    -- Field 'ControlnByte01.Hub_select'
    constant CONTROLNBYTE01_HUB_SELECT_BIT_OFFSET : natural := 17; -- bit offset of the 'Hub_select' field
    constant CONTROLNBYTE01_HUB_SELECT_BIT_WIDTH : natural := 3; -- bit width of the 'Hub_select' field
    constant CONTROLNBYTE01_HUB_SELECT_RESET : std_logic_vector(19 downto 17) := std_logic_vector'("000"); -- reset value of the 'Hub_select' field

    -- Field 'ControlnByte01.Node_id'
    constant CONTROLNBYTE01_NODE_ID_BIT_OFFSET : natural := 20; -- bit offset of the 'Node_id' field
    constant CONTROLNBYTE01_NODE_ID_BIT_WIDTH : natural := 7; -- bit width of the 'Node_id' field
    constant CONTROLNBYTE01_NODE_ID_RESET : std_logic_vector(26 downto 20) := std_logic_vector'("0000000"); -- reset value of the 'Node_id' field

    -- Field 'ControlnByte01.CAN_code'
    constant CONTROLNBYTE01_CAN_CODE_BIT_OFFSET : natural := 27; -- bit offset of the 'CAN_code' field
    constant CONTROLNBYTE01_CAN_CODE_BIT_WIDTH : natural := 4; -- bit width of the 'CAN_code' field
    constant CONTROLNBYTE01_CAN_CODE_RESET : std_logic_vector(30 downto 27) := std_logic_vector'("0000"); -- reset value of the 'CAN_code' field

    -- Register 'Byte25'
    constant BYTE25_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000004"); -- address offset of the 'Byte25' register

    -- Field 'Byte25.Byte5'
    constant BYTE25_BYTE5_BIT_OFFSET : natural := 0; -- bit offset of the 'Byte5' field
    constant BYTE25_BYTE5_BIT_WIDTH : natural := 8; -- bit width of the 'Byte5' field
    constant BYTE25_BYTE5_RESET : std_logic_vector(7 downto 0) := std_logic_vector'("00000000"); -- reset value of the 'Byte5' field

    -- Field 'Byte25.Byte4'
    constant BYTE25_BYTE4_BIT_OFFSET : natural := 8; -- bit offset of the 'Byte4' field
    constant BYTE25_BYTE4_BIT_WIDTH : natural := 8; -- bit width of the 'Byte4' field
    constant BYTE25_BYTE4_RESET : std_logic_vector(15 downto 8) := std_logic_vector'("00000000"); -- reset value of the 'Byte4' field

    -- Field 'Byte25.SubIndex'
    constant BYTE25_SUBINDEX_BIT_OFFSET : natural := 16; -- bit offset of the 'SubIndex' field
    constant BYTE25_SUBINDEX_BIT_WIDTH : natural := 8; -- bit width of the 'SubIndex' field
    constant BYTE25_SUBINDEX_RESET : std_logic_vector(23 downto 16) := std_logic_vector'("00000000"); -- reset value of the 'SubIndex' field

    -- Field 'Byte25.IndexPart2'
    constant BYTE25_INDEXPART2_BIT_OFFSET : natural := 24; -- bit offset of the 'IndexPart2' field
    constant BYTE25_INDEXPART2_BIT_WIDTH : natural := 8; -- bit width of the 'IndexPart2' field
    constant BYTE25_INDEXPART2_RESET : std_logic_vector(31 downto 24) := std_logic_vector'("00000000"); -- reset value of the 'IndexPart2' field

    -- Register 'Byte67'
    constant BYTE67_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000008"); -- address offset of the 'Byte67' register

    -- Field 'Byte67.Byte7'
    constant BYTE67_BYTE7_BIT_OFFSET : natural := 0; -- bit offset of the 'Byte7' field
    constant BYTE67_BYTE7_BIT_WIDTH : natural := 8; -- bit width of the 'Byte7' field
    constant BYTE67_BYTE7_RESET : std_logic_vector(7 downto 0) := std_logic_vector'("00000000"); -- reset value of the 'Byte7' field

    -- Field 'Byte67.Byte6'
    constant BYTE67_BYTE6_BIT_OFFSET : natural := 8; -- bit offset of the 'Byte6' field
    constant BYTE67_BYTE6_BIT_WIDTH : natural := 8; -- bit width of the 'Byte6' field
    constant BYTE67_BYTE6_RESET : std_logic_vector(15 downto 8) := std_logic_vector'("00000000"); -- reset value of the 'Byte6' field

    -- Register 'ReadReg0'
    constant READREG0_OFFSET : unsigned(31 downto 0) := unsigned'(x"0000000C"); -- address offset of the 'ReadReg0' register

    -- Field 'ReadReg0.eLinkRead_en'
    constant READREG0_ELINKREAD_EN_BIT_OFFSET : natural := 0; -- bit offset of the 'eLinkRead_en' field
    constant READREG0_ELINKREAD_EN_BIT_WIDTH : natural := 1; -- bit width of the 'eLinkRead_en' field
    constant READREG0_ELINKREAD_EN_RESET : std_logic_vector(0 downto 0) := std_logic_vector'("0"); -- reset value of the 'eLinkRead_en' field

    -- Field 'ReadReg0.IndexPart1'
    constant READREG0_INDEXPART1_BIT_OFFSET : natural := 1; -- bit offset of the 'IndexPart1' field
    constant READREG0_INDEXPART1_BIT_WIDTH : natural := 8; -- bit width of the 'IndexPart1' field
    constant READREG0_INDEXPART1_RESET : std_logic_vector(8 downto 1) := std_logic_vector'("00000000"); -- reset value of the 'IndexPart1' field

    -- Field 'ReadReg0.Byte0'
    constant READREG0_BYTE0_BIT_OFFSET : natural := 9; -- bit offset of the 'Byte0' field
    constant READREG0_BYTE0_BIT_WIDTH : natural := 8; -- bit width of the 'Byte0' field
    constant READREG0_BYTE0_RESET : std_logic_vector(16 downto 9) := std_logic_vector'("00000000"); -- reset value of the 'Byte0' field

    -- Field 'ReadReg0.Hub_select'
    constant READREG0_HUB_SELECT_BIT_OFFSET : natural := 17; -- bit offset of the 'Hub_select' field
    constant READREG0_HUB_SELECT_BIT_WIDTH : natural := 3; -- bit width of the 'Hub_select' field
    constant READREG0_HUB_SELECT_RESET : std_logic_vector(19 downto 17) := std_logic_vector'("000"); -- reset value of the 'Hub_select' field

    -- Field 'ReadReg0.Node_id'
    constant READREG0_NODE_ID_BIT_OFFSET : natural := 20; -- bit offset of the 'Node_id' field
    constant READREG0_NODE_ID_BIT_WIDTH : natural := 7; -- bit width of the 'Node_id' field
    constant READREG0_NODE_ID_RESET : std_logic_vector(26 downto 20) := std_logic_vector'("0000000"); -- reset value of the 'Node_id' field

    -- Field 'ReadReg0.CAN_code'
    constant READREG0_CAN_CODE_BIT_OFFSET : natural := 27; -- bit offset of the 'CAN_code' field
    constant READREG0_CAN_CODE_BIT_WIDTH : natural := 4; -- bit width of the 'CAN_code' field
    constant READREG0_CAN_CODE_RESET : std_logic_vector(30 downto 27) := std_logic_vector'("0000"); -- reset value of the 'CAN_code' field

    -- Register 'ReadReg1'
    constant READREG1_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000010"); -- address offset of the 'ReadReg1' register

    -- Field 'ReadReg1.Byte5'
    constant READREG1_BYTE5_BIT_OFFSET : natural := 0; -- bit offset of the 'Byte5' field
    constant READREG1_BYTE5_BIT_WIDTH : natural := 8; -- bit width of the 'Byte5' field
    constant READREG1_BYTE5_RESET : std_logic_vector(7 downto 0) := std_logic_vector'("00000000"); -- reset value of the 'Byte5' field

    -- Field 'ReadReg1.Byte4'
    constant READREG1_BYTE4_BIT_OFFSET : natural := 8; -- bit offset of the 'Byte4' field
    constant READREG1_BYTE4_BIT_WIDTH : natural := 8; -- bit width of the 'Byte4' field
    constant READREG1_BYTE4_RESET : std_logic_vector(15 downto 8) := std_logic_vector'("00000000"); -- reset value of the 'Byte4' field

    -- Field 'ReadReg1.SubIndex'
    constant READREG1_SUBINDEX_BIT_OFFSET : natural := 16; -- bit offset of the 'SubIndex' field
    constant READREG1_SUBINDEX_BIT_WIDTH : natural := 8; -- bit width of the 'SubIndex' field
    constant READREG1_SUBINDEX_RESET : std_logic_vector(23 downto 16) := std_logic_vector'("00000000"); -- reset value of the 'SubIndex' field

    -- Field 'ReadReg1.IndexPart2'
    constant READREG1_INDEXPART2_BIT_OFFSET : natural := 24; -- bit offset of the 'IndexPart2' field
    constant READREG1_INDEXPART2_BIT_WIDTH : natural := 8; -- bit width of the 'IndexPart2' field
    constant READREG1_INDEXPART2_RESET : std_logic_vector(31 downto 24) := std_logic_vector'("00000000"); -- reset value of the 'IndexPart2' field

    -- Register 'ReadReg2'
    constant READREG2_OFFSET : unsigned(31 downto 0) := unsigned'(x"00000014"); -- address offset of the 'ReadReg2' register

    -- Field 'ReadReg2.Byte7'
    constant READREG2_BYTE7_BIT_OFFSET : natural := 0; -- bit offset of the 'Byte7' field
    constant READREG2_BYTE7_BIT_WIDTH : natural := 8; -- bit width of the 'Byte7' field
    constant READREG2_BYTE7_RESET : std_logic_vector(7 downto 0) := std_logic_vector'("00000000"); -- reset value of the 'Byte7' field

    -- Field 'ReadReg2.Byte6'
    constant READREG2_BYTE6_BIT_OFFSET : natural := 8; -- bit offset of the 'Byte6' field
    constant READREG2_BYTE6_BIT_WIDTH : natural := 8; -- bit width of the 'Byte6' field
    constant READREG2_BYTE6_RESET : std_logic_vector(15 downto 8) := std_logic_vector'("00000000"); -- reset value of the 'Byte6' field

    -- Type definitions
    type slv1_array_t is array(natural range <>) of std_logic_vector(0 downto 0);
    type slv2_array_t is array(natural range <>) of std_logic_vector(1 downto 0);
    type slv3_array_t is array(natural range <>) of std_logic_vector(2 downto 0);
    type slv4_array_t is array(natural range <>) of std_logic_vector(3 downto 0);
    type slv5_array_t is array(natural range <>) of std_logic_vector(4 downto 0);
    type slv6_array_t is array(natural range <>) of std_logic_vector(5 downto 0);
    type slv7_array_t is array(natural range <>) of std_logic_vector(6 downto 0);
    type slv8_array_t is array(natural range <>) of std_logic_vector(7 downto 0);
    type slv9_array_t is array(natural range <>) of std_logic_vector(8 downto 0);
    type slv10_array_t is array(natural range <>) of std_logic_vector(9 downto 0);
    type slv11_array_t is array(natural range <>) of std_logic_vector(10 downto 0);
    type slv12_array_t is array(natural range <>) of std_logic_vector(11 downto 0);
    type slv13_array_t is array(natural range <>) of std_logic_vector(12 downto 0);
    type slv14_array_t is array(natural range <>) of std_logic_vector(13 downto 0);
    type slv15_array_t is array(natural range <>) of std_logic_vector(14 downto 0);
    type slv16_array_t is array(natural range <>) of std_logic_vector(15 downto 0);
    type slv17_array_t is array(natural range <>) of std_logic_vector(16 downto 0);
    type slv18_array_t is array(natural range <>) of std_logic_vector(17 downto 0);
    type slv19_array_t is array(natural range <>) of std_logic_vector(18 downto 0);
    type slv20_array_t is array(natural range <>) of std_logic_vector(19 downto 0);
    type slv21_array_t is array(natural range <>) of std_logic_vector(20 downto 0);
    type slv22_array_t is array(natural range <>) of std_logic_vector(21 downto 0);
    type slv23_array_t is array(natural range <>) of std_logic_vector(22 downto 0);
    type slv24_array_t is array(natural range <>) of std_logic_vector(23 downto 0);
    type slv25_array_t is array(natural range <>) of std_logic_vector(24 downto 0);
    type slv26_array_t is array(natural range <>) of std_logic_vector(25 downto 0);
    type slv27_array_t is array(natural range <>) of std_logic_vector(26 downto 0);
    type slv28_array_t is array(natural range <>) of std_logic_vector(27 downto 0);
    type slv29_array_t is array(natural range <>) of std_logic_vector(28 downto 0);
    type slv30_array_t is array(natural range <>) of std_logic_vector(29 downto 0);
    type slv31_array_t is array(natural range <>) of std_logic_vector(30 downto 0);
    type slv32_array_t is array(natural range <>) of std_logic_vector(31 downto 0);

end eLinkMessageMap_regs_pkg;
