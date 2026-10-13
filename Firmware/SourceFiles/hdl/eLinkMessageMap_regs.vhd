----------------------------------------------------------------------------------------------------
-- 'eLinkMessageMap' Register Component
-- Revision: 69
----------------------------------------------------------------------------------------------------
-- Generated on 2024-07-24 at 09:03 (UTC) by airhdl version 2023.07.1-936312266
----------------------------------------------------------------------------------------------------
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
----------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eLinkMessageMap_regs_pkg.all;

entity eLinkMessageMap_regs is
    generic(
        AXI_ADDR_WIDTH : integer := 32;  -- width of the AXI address word, in bits
        BASEADDR : std_logic_vector(31 downto 0) := x"A0000000" -- register bank AXI base address
    );
    port(
        -- Clock and Reset
        axi_aclk    : in  std_logic;
        axi_aresetn : in  std_logic;
        -- AXI Write Address Channel
        s_axi_awaddr  : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
        s_axi_awprot  : in  std_logic_vector(2 downto 0); -- sigasi @suppress "Unused port"
        s_axi_awvalid : in  std_logic;
        s_axi_awready : out std_logic;
        -- AXI Write Data Channel
        s_axi_wdata   : in  std_logic_vector(31 downto 0);
        s_axi_wstrb   : in  std_logic_vector(3 downto 0);
        s_axi_wvalid  : in  std_logic;
        s_axi_wready  : out std_logic;
        -- AXI Read Address Channel
        s_axi_araddr  : in  std_logic_vector(AXI_ADDR_WIDTH - 1 downto 0);
        s_axi_arprot  : in  std_logic_vector(2 downto 0); -- sigasi @suppress "Unused port"
        s_axi_arvalid : in  std_logic;
        s_axi_arready : out std_logic;
        -- AXI Read Data Channel
        s_axi_rdata   : out std_logic_vector(31 downto 0);
        s_axi_rresp   : out std_logic_vector(1 downto 0);
        s_axi_rvalid  : out std_logic;
        s_axi_rready  : in  std_logic;
        -- AXI Write Response Channel
        s_axi_bresp   : out std_logic_vector(1 downto 0);
        s_axi_bvalid  : out std_logic;
        s_axi_bready  : in  std_logic;
        -- User Ports
        controlnbyte01_strobe : out std_logic; -- strobe signal for register 'ControlnByte01' (pulsed when the register is written from the bus)
        controlnbyte01_elinkwrite_en : out std_logic_vector(0 downto 0); -- write value of field 'ControlnByte01.eLinkWrite_en'
        controlnbyte01_indexpart1 : out std_logic_vector(7 downto 0); -- write value of field 'ControlnByte01.IndexPart1'
        controlnbyte01_byte0 : out std_logic_vector(7 downto 0); -- write value of field 'ControlnByte01.Byte0'
        controlnbyte01_hub_select : out std_logic_vector(2 downto 0); -- write value of field 'ControlnByte01.Hub_select'
        controlnbyte01_node_id : out std_logic_vector(6 downto 0); -- write value of field 'ControlnByte01.Node_id'
        controlnbyte01_can_code : out std_logic_vector(3 downto 0); -- write value of field 'ControlnByte01.CAN_code'
        byte25_strobe : out std_logic; -- strobe signal for register 'Byte25' (pulsed when the register is written from the bus)
        byte25_byte5 : out std_logic_vector(7 downto 0); -- write value of field 'Byte25.Byte5'
        byte25_byte4 : out std_logic_vector(7 downto 0); -- write value of field 'Byte25.Byte4'
        byte25_subindex : out std_logic_vector(7 downto 0); -- write value of field 'Byte25.SubIndex'
        byte25_indexpart2 : out std_logic_vector(7 downto 0); -- write value of field 'Byte25.IndexPart2'
        byte67_strobe : out std_logic; -- strobe signal for register 'Byte67' (pulsed when the register is written from the bus)
        byte67_byte7 : out std_logic_vector(7 downto 0); -- write value of field 'Byte67.Byte7'
        byte67_byte6 : out std_logic_vector(7 downto 0); -- write value of field 'Byte67.Byte6'
        readreg0_strobe : out std_logic; -- strobe signal for register 'ReadReg0' (pulsed when the register is read from the bus)
        readreg0_elinkread_en : in std_logic_vector(0 downto 0); -- read value of field 'ReadReg0.eLinkRead_en'
        readreg0_indexpart1 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg0.IndexPart1'
        readreg0_byte0 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg0.Byte0'
        readreg0_hub_select : in std_logic_vector(2 downto 0); -- read value of field 'ReadReg0.Hub_select'
        readreg0_node_id : in std_logic_vector(6 downto 0); -- read value of field 'ReadReg0.Node_id'
        readreg0_can_code : in std_logic_vector(3 downto 0); -- read value of field 'ReadReg0.CAN_code'
        readreg1_strobe : out std_logic; -- strobe signal for register 'ReadReg1' (pulsed when the register is read from the bus)
        readreg1_byte5 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg1.Byte5'
        readreg1_byte4 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg1.Byte4'
        readreg1_subindex : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg1.SubIndex'
        readreg1_indexpart2 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg1.IndexPart2'
        readreg2_strobe : out std_logic; -- strobe signal for register 'ReadReg2' (pulsed when the register is read from the bus)
        readreg2_byte7 : in std_logic_vector(7 downto 0); -- read value of field 'ReadReg2.Byte7'
        readreg2_byte6 : in std_logic_vector(7 downto 0) -- read value of field 'ReadReg2.Byte6'
    );
end entity eLinkMessageMap_regs;

architecture RTL of eLinkMessageMap_regs is

    ------------------------------------------------------------------------------------------------
    -- Constants
    ------------------------------------------------------------------------------------------------

    constant AXI_OKAY           : std_logic_vector(1 downto 0) := "00";
    constant AXI_SLVERR         : std_logic_vector(1 downto 0) := "10";

    ------------------------------------------------------------------------------------------------
    -- Signals
    ------------------------------------------------------------------------------------------------

    -- Registered signals
    signal s_axi_awready_r    : std_logic;
    signal s_axi_wready_r     : std_logic;
    signal s_axi_awaddr_reg_r : unsigned(s_axi_awaddr'range);
    signal s_axi_bvalid_r     : std_logic;
    signal s_axi_bresp_r      : std_logic_vector(s_axi_bresp'range);
    signal s_axi_arready_r    : std_logic;
    signal s_axi_araddr_reg_r : unsigned(AXI_ADDR_WIDTH - 1 downto 0);
    signal s_axi_rvalid_r     : std_logic;
    signal s_axi_rresp_r      : std_logic_vector(s_axi_rresp'range);
    signal s_axi_wdata_reg_r  : std_logic_vector(s_axi_wdata'range);
    signal s_axi_wstrb_reg_r  : std_logic_vector(s_axi_wstrb'range);
    signal s_axi_rdata_r      : std_logic_vector(s_axi_rdata'range);

    -- User-defined registers
    signal s_controlnbyte01_strobe_r : std_logic;
    signal s_reg_controlnbyte01_elinkwrite_en_r : std_logic_vector(0 downto 0);
    signal s_reg_controlnbyte01_indexpart1_r : std_logic_vector(7 downto 0);
    signal s_reg_controlnbyte01_byte0_r : std_logic_vector(7 downto 0);
    signal s_reg_controlnbyte01_hub_select_r : std_logic_vector(2 downto 0);
    signal s_reg_controlnbyte01_node_id_r : std_logic_vector(6 downto 0);
    signal s_reg_controlnbyte01_can_code_r : std_logic_vector(3 downto 0);
    signal s_byte25_strobe_r : std_logic;
    signal s_reg_byte25_byte5_r : std_logic_vector(7 downto 0);
    signal s_reg_byte25_byte4_r : std_logic_vector(7 downto 0);
    signal s_reg_byte25_subindex_r : std_logic_vector(7 downto 0);
    signal s_reg_byte25_indexpart2_r : std_logic_vector(7 downto 0);
    signal s_byte67_strobe_r : std_logic;
    signal s_reg_byte67_byte7_r : std_logic_vector(7 downto 0);
    signal s_reg_byte67_byte6_r : std_logic_vector(7 downto 0);
    signal s_readreg0_strobe_r : std_logic;
    signal s_reg_readreg0_elinkread_en : std_logic_vector(0 downto 0);
    signal s_reg_readreg0_indexpart1 : std_logic_vector(7 downto 0);
    signal s_reg_readreg0_byte0 : std_logic_vector(7 downto 0);
    signal s_reg_readreg0_hub_select : std_logic_vector(2 downto 0);
    signal s_reg_readreg0_node_id : std_logic_vector(6 downto 0);
    signal s_reg_readreg0_can_code : std_logic_vector(3 downto 0);
    signal s_readreg1_strobe_r : std_logic;
    signal s_reg_readreg1_byte5 : std_logic_vector(7 downto 0);
    signal s_reg_readreg1_byte4 : std_logic_vector(7 downto 0);
    signal s_reg_readreg1_subindex : std_logic_vector(7 downto 0);
    signal s_reg_readreg1_indexpart2 : std_logic_vector(7 downto 0);
    signal s_readreg2_strobe_r : std_logic;
    signal s_reg_readreg2_byte7 : std_logic_vector(7 downto 0);
    signal s_reg_readreg2_byte6 : std_logic_vector(7 downto 0);

begin

    ------------------------------------------------------------------------------------------------
    -- Inputs
    ------------------------------------------------------------------------------------------------

    s_reg_readreg0_elinkread_en <= readreg0_elinkread_en;
    s_reg_readreg0_indexpart1 <= readreg0_indexpart1;
    s_reg_readreg0_byte0 <= readreg0_byte0;
    s_reg_readreg0_hub_select <= readreg0_hub_select;
    s_reg_readreg0_node_id <= readreg0_node_id;
    s_reg_readreg0_can_code <= readreg0_can_code;
    s_reg_readreg1_byte5 <= readreg1_byte5;
    s_reg_readreg1_byte4 <= readreg1_byte4;
    s_reg_readreg1_subindex <= readreg1_subindex;
    s_reg_readreg1_indexpart2 <= readreg1_indexpart2;
    s_reg_readreg2_byte7 <= readreg2_byte7;
    s_reg_readreg2_byte6 <= readreg2_byte6;

    ------------------------------------------------------------------------------------------------
    -- Read-transaction FSM
    ------------------------------------------------------------------------------------------------

    read_fsm : process(axi_aclk, axi_aresetn) is
        constant MAX_MEMORY_LATENCY : natural := 5;
        type t_state is (IDLE, READ_REGISTER, WAIT_MEMORY_RDATA, READ_RESPONSE, DONE);
        -- registered state variables
        variable v_state_r          : t_state;
        variable v_rdata_r          : std_logic_vector(31 downto 0);
        variable v_rresp_r          : std_logic_vector(s_axi_rresp'range);
        variable v_mem_wait_count_r : natural range 0 to MAX_MEMORY_LATENCY;
        -- combinatorial helper variables
        variable v_addr_hit : boolean;
    begin
        if axi_aresetn = '0' then
            v_state_r          := IDLE;
            v_rdata_r          := (others => '0');
            v_rresp_r          := (others => '0');
            v_mem_wait_count_r := 0;
            s_axi_arready_r    <= '0';
            s_axi_rvalid_r     <= '0';
            s_axi_rresp_r      <= (others => '0');
            s_axi_araddr_reg_r <= (others => '0');
            s_axi_rdata_r      <= (others => '0');
            s_readreg0_strobe_r <= '0';
            s_readreg1_strobe_r <= '0';
            s_readreg2_strobe_r <= '0';

        elsif rising_edge(axi_aclk) then
            -- Default values:
            s_axi_arready_r <= '0';
            s_readreg0_strobe_r <= '0';
            s_readreg1_strobe_r <= '0';
            s_readreg2_strobe_r <= '0';

            case v_state_r is

                -- Wait for the start of a read transaction, which is initiated by the
                -- assertion of ARVALID
                when IDLE =>
                    if s_axi_arvalid = '1' then
                        s_axi_araddr_reg_r <= unsigned(s_axi_araddr); -- save the read address
                        s_axi_arready_r    <= '1'; -- acknowledge the read-address
                        v_state_r          := READ_REGISTER;
                    end if;

                -- Read from the actual storage element
                when READ_REGISTER =>
                    -- Defaults:
                    v_addr_hit := false;
                    v_rdata_r  := (others => '0');

                    -- Register 'ReadReg0' at address offset 0xC
                    if s_axi_araddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + READREG0_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        v_rdata_r(0 downto 0) := s_reg_readreg0_elinkread_en;
                        v_rdata_r(8 downto 1) := s_reg_readreg0_indexpart1;
                        v_rdata_r(16 downto 9) := s_reg_readreg0_byte0;
                        v_rdata_r(19 downto 17) := s_reg_readreg0_hub_select;
                        v_rdata_r(26 downto 20) := s_reg_readreg0_node_id;
                        v_rdata_r(30 downto 27) := s_reg_readreg0_can_code;
                        s_readreg0_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- Register 'ReadReg1' at address offset 0x10
                    if s_axi_araddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + READREG1_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        v_rdata_r(7 downto 0) := s_reg_readreg1_byte5;
                        v_rdata_r(15 downto 8) := s_reg_readreg1_byte4;
                        v_rdata_r(23 downto 16) := s_reg_readreg1_subindex;
                        v_rdata_r(31 downto 24) := s_reg_readreg1_indexpart2;
                        s_readreg1_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    -- Register 'ReadReg2' at address offset 0x14
                    if s_axi_araddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + READREG2_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        v_rdata_r(7 downto 0) := s_reg_readreg2_byte7;
                        v_rdata_r(15 downto 8) := s_reg_readreg2_byte6;
                        s_readreg2_strobe_r <= '1';
                        v_state_r := READ_RESPONSE;
                    end if;
                    --
                    if v_addr_hit then
                        v_rresp_r := AXI_OKAY;
                    else
                        v_rresp_r := AXI_SLVERR;
                        -- pragma translate_off
                        report "ARADDR decode error" severity warning;
                        -- pragma translate_on
                        v_state_r := READ_RESPONSE;
                    end if;

                -- Wait for memory read data
                when WAIT_MEMORY_RDATA =>
                    if v_mem_wait_count_r = 0 then
                        v_state_r      := READ_RESPONSE;
                    else
                        v_mem_wait_count_r := v_mem_wait_count_r - 1;
                    end if;

                -- Generate read response
                when READ_RESPONSE =>
                    s_axi_rvalid_r <= '1';
                    s_axi_rresp_r  <= v_rresp_r;
                    s_axi_rdata_r  <= v_rdata_r;
                    --
                    v_state_r      := DONE;

                -- Write transaction completed, wait for master RREADY to proceed
                when DONE =>
                    if s_axi_rready = '1' then
                        s_axi_rvalid_r <= '0';
                        s_axi_rdata_r   <= (others => '0');
                        v_state_r      := IDLE;
                    end if;
            end case;
        end if;
    end process read_fsm;

    ------------------------------------------------------------------------------------------------
    -- Write-transaction FSM
    ------------------------------------------------------------------------------------------------

    write_fsm : process(axi_aclk, axi_aresetn) is
        type t_state is (IDLE, ADDR_FIRST, DATA_FIRST, UPDATE_REGISTER, DONE);
        variable v_state_r  : t_state;
        variable v_addr_hit : boolean;
    begin
        if axi_aresetn = '0' then
            v_state_r          := IDLE;
            s_axi_awready_r    <= '0';
            s_axi_wready_r     <= '0';
            s_axi_awaddr_reg_r <= (others => '0');
            s_axi_wdata_reg_r  <= (others => '0');
            s_axi_wstrb_reg_r  <= (others => '0');
            s_axi_bvalid_r     <= '0';
            s_axi_bresp_r      <= (others => '0');
            --
            s_controlnbyte01_strobe_r <= '0';
            s_reg_controlnbyte01_elinkwrite_en_r <= CONTROLNBYTE01_ELINKWRITE_EN_RESET;
            s_reg_controlnbyte01_indexpart1_r <= CONTROLNBYTE01_INDEXPART1_RESET;
            s_reg_controlnbyte01_byte0_r <= CONTROLNBYTE01_BYTE0_RESET;
            s_reg_controlnbyte01_hub_select_r <= CONTROLNBYTE01_HUB_SELECT_RESET;
            s_reg_controlnbyte01_node_id_r <= CONTROLNBYTE01_NODE_ID_RESET;
            s_reg_controlnbyte01_can_code_r <= CONTROLNBYTE01_CAN_CODE_RESET;
            s_byte25_strobe_r <= '0';
            s_reg_byte25_byte5_r <= BYTE25_BYTE5_RESET;
            s_reg_byte25_byte4_r <= BYTE25_BYTE4_RESET;
            s_reg_byte25_subindex_r <= BYTE25_SUBINDEX_RESET;
            s_reg_byte25_indexpart2_r <= BYTE25_INDEXPART2_RESET;
            s_byte67_strobe_r <= '0';
            s_reg_byte67_byte7_r <= BYTE67_BYTE7_RESET;
            s_reg_byte67_byte6_r <= BYTE67_BYTE6_RESET;

        elsif rising_edge(axi_aclk) then
            -- Default values:
            s_axi_awready_r <= '0';
            s_axi_wready_r  <= '0';
            s_controlnbyte01_strobe_r <= '0';
            s_byte25_strobe_r <= '0';
            s_byte67_strobe_r <= '0';

            case v_state_r is

                -- Wait for the start of a write transaction, which may be
                -- initiated by either of the following conditions:
                --   * assertion of both AWVALID and WVALID
                --   * assertion of AWVALID
                --   * assertion of WVALID
                when IDLE =>
                    if s_axi_awvalid = '1' and s_axi_wvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        s_axi_wdata_reg_r  <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r  <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r     <= '1'; -- acknowledge the write-data
                        v_state_r          := UPDATE_REGISTER;
                    elsif s_axi_awvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        v_state_r          := ADDR_FIRST;
                    elsif s_axi_wvalid = '1' then
                        s_axi_wdata_reg_r <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r    <= '1'; -- acknowledge the write-data
                        v_state_r         := DATA_FIRST;
                    end if;

                -- Address-first write transaction: wait for the write-data
                when ADDR_FIRST =>
                    if s_axi_wvalid = '1' then
                        s_axi_wdata_reg_r <= s_axi_wdata; -- save the write-data
                        s_axi_wstrb_reg_r <= s_axi_wstrb; -- save the write-strobe
                        s_axi_wready_r    <= '1'; -- acknowledge the write-data
                        v_state_r         := UPDATE_REGISTER;
                    end if;

                -- Data-first write transaction: wait for the write-address
                when DATA_FIRST =>
                    if s_axi_awvalid = '1' then
                        s_axi_awaddr_reg_r <= unsigned(s_axi_awaddr); -- save the write-address
                        s_axi_awready_r    <= '1'; -- acknowledge the write-address
                        v_state_r          := UPDATE_REGISTER;
                    end if;

                -- Update the actual storage element
                when UPDATE_REGISTER =>
                    s_axi_bresp_r               <= AXI_OKAY; -- default value, may be overriden in case of decode error
                    s_axi_bvalid_r              <= '1';
                    --
                    v_addr_hit := false;
                    -- Register 'ControlnByte01' at address offset 0x0
                    if s_axi_awaddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + CONTROLNBYTE01_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        s_controlnbyte01_strobe_r <= '1';
                        -- Field 'eLinkWrite_en':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_elinkwrite_en_r(0) <= s_axi_wdata_reg_r(0); -- eLinkWrite_en(0)
                        end if;
                        -- Field 'IndexPart1':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(0) <= s_axi_wdata_reg_r(1); -- IndexPart1(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(1) <= s_axi_wdata_reg_r(2); -- IndexPart1(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(2) <= s_axi_wdata_reg_r(3); -- IndexPart1(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(3) <= s_axi_wdata_reg_r(4); -- IndexPart1(3)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(4) <= s_axi_wdata_reg_r(5); -- IndexPart1(4)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(5) <= s_axi_wdata_reg_r(6); -- IndexPart1(5)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(6) <= s_axi_wdata_reg_r(7); -- IndexPart1(6)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_indexpart1_r(7) <= s_axi_wdata_reg_r(8); -- IndexPart1(7)
                        end if;
                        -- Field 'Byte0':
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(0) <= s_axi_wdata_reg_r(9); -- Byte0(0)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(1) <= s_axi_wdata_reg_r(10); -- Byte0(1)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(2) <= s_axi_wdata_reg_r(11); -- Byte0(2)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(3) <= s_axi_wdata_reg_r(12); -- Byte0(3)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(4) <= s_axi_wdata_reg_r(13); -- Byte0(4)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(5) <= s_axi_wdata_reg_r(14); -- Byte0(5)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_controlnbyte01_byte0_r(6) <= s_axi_wdata_reg_r(15); -- Byte0(6)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_byte0_r(7) <= s_axi_wdata_reg_r(16); -- Byte0(7)
                        end if;
                        -- Field 'Hub_select':
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_hub_select_r(0) <= s_axi_wdata_reg_r(17); -- Hub_select(0)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_hub_select_r(1) <= s_axi_wdata_reg_r(18); -- Hub_select(1)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_hub_select_r(2) <= s_axi_wdata_reg_r(19); -- Hub_select(2)
                        end if;
                        -- Field 'Node_id':
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_node_id_r(0) <= s_axi_wdata_reg_r(20); -- Node_id(0)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_node_id_r(1) <= s_axi_wdata_reg_r(21); -- Node_id(1)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_node_id_r(2) <= s_axi_wdata_reg_r(22); -- Node_id(2)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_controlnbyte01_node_id_r(3) <= s_axi_wdata_reg_r(23); -- Node_id(3)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_node_id_r(4) <= s_axi_wdata_reg_r(24); -- Node_id(4)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_node_id_r(5) <= s_axi_wdata_reg_r(25); -- Node_id(5)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_node_id_r(6) <= s_axi_wdata_reg_r(26); -- Node_id(6)
                        end if;
                        -- Field 'CAN_code':
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_can_code_r(0) <= s_axi_wdata_reg_r(27); -- CAN_code(0)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_can_code_r(1) <= s_axi_wdata_reg_r(28); -- CAN_code(1)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_can_code_r(2) <= s_axi_wdata_reg_r(29); -- CAN_code(2)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_controlnbyte01_can_code_r(3) <= s_axi_wdata_reg_r(30); -- CAN_code(3)
                        end if;
                    end if;
                    -- Register 'Byte25' at address offset 0x4
                    if s_axi_awaddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + BYTE25_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        s_byte25_strobe_r <= '1';
                        -- Field 'Byte5':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(0) <= s_axi_wdata_reg_r(0); -- Byte5(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(1) <= s_axi_wdata_reg_r(1); -- Byte5(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(2) <= s_axi_wdata_reg_r(2); -- Byte5(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(3) <= s_axi_wdata_reg_r(3); -- Byte5(3)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(4) <= s_axi_wdata_reg_r(4); -- Byte5(4)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(5) <= s_axi_wdata_reg_r(5); -- Byte5(5)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(6) <= s_axi_wdata_reg_r(6); -- Byte5(6)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte25_byte5_r(7) <= s_axi_wdata_reg_r(7); -- Byte5(7)
                        end if;
                        -- Field 'Byte4':
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(0) <= s_axi_wdata_reg_r(8); -- Byte4(0)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(1) <= s_axi_wdata_reg_r(9); -- Byte4(1)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(2) <= s_axi_wdata_reg_r(10); -- Byte4(2)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(3) <= s_axi_wdata_reg_r(11); -- Byte4(3)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(4) <= s_axi_wdata_reg_r(12); -- Byte4(4)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(5) <= s_axi_wdata_reg_r(13); -- Byte4(5)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(6) <= s_axi_wdata_reg_r(14); -- Byte4(6)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte25_byte4_r(7) <= s_axi_wdata_reg_r(15); -- Byte4(7)
                        end if;
                        -- Field 'SubIndex':
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(0) <= s_axi_wdata_reg_r(16); -- SubIndex(0)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(1) <= s_axi_wdata_reg_r(17); -- SubIndex(1)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(2) <= s_axi_wdata_reg_r(18); -- SubIndex(2)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(3) <= s_axi_wdata_reg_r(19); -- SubIndex(3)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(4) <= s_axi_wdata_reg_r(20); -- SubIndex(4)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(5) <= s_axi_wdata_reg_r(21); -- SubIndex(5)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(6) <= s_axi_wdata_reg_r(22); -- SubIndex(6)
                        end if;
                        if s_axi_wstrb_reg_r(2) = '1' then
                            s_reg_byte25_subindex_r(7) <= s_axi_wdata_reg_r(23); -- SubIndex(7)
                        end if;
                        -- Field 'IndexPart2':
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(0) <= s_axi_wdata_reg_r(24); -- IndexPart2(0)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(1) <= s_axi_wdata_reg_r(25); -- IndexPart2(1)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(2) <= s_axi_wdata_reg_r(26); -- IndexPart2(2)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(3) <= s_axi_wdata_reg_r(27); -- IndexPart2(3)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(4) <= s_axi_wdata_reg_r(28); -- IndexPart2(4)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(5) <= s_axi_wdata_reg_r(29); -- IndexPart2(5)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(6) <= s_axi_wdata_reg_r(30); -- IndexPart2(6)
                        end if;
                        if s_axi_wstrb_reg_r(3) = '1' then
                            s_reg_byte25_indexpart2_r(7) <= s_axi_wdata_reg_r(31); -- IndexPart2(7)
                        end if;
                    end if;
                    -- Register 'Byte67' at address offset 0x8
                    if s_axi_awaddr_reg_r(AXI_ADDR_WIDTH-1 downto 2) = resize(unsigned(BASEADDR(AXI_ADDR_WIDTH-1 downto 2)) + BYTE67_OFFSET(AXI_ADDR_WIDTH-1 downto 2), AXI_ADDR_WIDTH-2) then
                        v_addr_hit := true;
                        s_byte67_strobe_r <= '1';
                        -- Field 'Byte7':
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(0) <= s_axi_wdata_reg_r(0); -- Byte7(0)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(1) <= s_axi_wdata_reg_r(1); -- Byte7(1)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(2) <= s_axi_wdata_reg_r(2); -- Byte7(2)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(3) <= s_axi_wdata_reg_r(3); -- Byte7(3)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(4) <= s_axi_wdata_reg_r(4); -- Byte7(4)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(5) <= s_axi_wdata_reg_r(5); -- Byte7(5)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(6) <= s_axi_wdata_reg_r(6); -- Byte7(6)
                        end if;
                        if s_axi_wstrb_reg_r(0) = '1' then
                            s_reg_byte67_byte7_r(7) <= s_axi_wdata_reg_r(7); -- Byte7(7)
                        end if;
                        -- Field 'Byte6':
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(0) <= s_axi_wdata_reg_r(8); -- Byte6(0)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(1) <= s_axi_wdata_reg_r(9); -- Byte6(1)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(2) <= s_axi_wdata_reg_r(10); -- Byte6(2)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(3) <= s_axi_wdata_reg_r(11); -- Byte6(3)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(4) <= s_axi_wdata_reg_r(12); -- Byte6(4)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(5) <= s_axi_wdata_reg_r(13); -- Byte6(5)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(6) <= s_axi_wdata_reg_r(14); -- Byte6(6)
                        end if;
                        if s_axi_wstrb_reg_r(1) = '1' then
                            s_reg_byte67_byte6_r(7) <= s_axi_wdata_reg_r(15); -- Byte6(7)
                        end if;
                    end if;
                    --
                    if not v_addr_hit then
                        s_axi_bresp_r <= AXI_SLVERR;
                        -- pragma translate_off
                        report "AWADDR decode error" severity warning;
                        -- pragma translate_on
                    end if;
                    --
                    v_state_r := DONE;

                -- Write transaction completed, wait for master BREADY to proceed
                when DONE =>
                    if s_axi_bready = '1' then
                        s_axi_bvalid_r <= '0';
                        v_state_r      := IDLE;
                    end if;

            end case;


        end if;
    end process write_fsm;

    ------------------------------------------------------------------------------------------------
    -- Outputs
    ------------------------------------------------------------------------------------------------

    s_axi_awready <= s_axi_awready_r;
    s_axi_wready  <= s_axi_wready_r;
    s_axi_bvalid  <= s_axi_bvalid_r;
    s_axi_bresp   <= s_axi_bresp_r;
    s_axi_arready <= s_axi_arready_r;
    s_axi_rvalid  <= s_axi_rvalid_r;
    s_axi_rresp   <= s_axi_rresp_r;
    s_axi_rdata   <= s_axi_rdata_r;

    controlnbyte01_strobe <= s_controlnbyte01_strobe_r;
    controlnbyte01_elinkwrite_en <= s_reg_controlnbyte01_elinkwrite_en_r;
    controlnbyte01_indexpart1 <= s_reg_controlnbyte01_indexpart1_r;
    controlnbyte01_byte0 <= s_reg_controlnbyte01_byte0_r;
    controlnbyte01_hub_select <= s_reg_controlnbyte01_hub_select_r;
    controlnbyte01_node_id <= s_reg_controlnbyte01_node_id_r;
    controlnbyte01_can_code <= s_reg_controlnbyte01_can_code_r;
    byte25_strobe <= s_byte25_strobe_r;
    byte25_byte5 <= s_reg_byte25_byte5_r;
    byte25_byte4 <= s_reg_byte25_byte4_r;
    byte25_subindex <= s_reg_byte25_subindex_r;
    byte25_indexpart2 <= s_reg_byte25_indexpart2_r;
    byte67_strobe <= s_byte67_strobe_r;
    byte67_byte7 <= s_reg_byte67_byte7_r;
    byte67_byte6 <= s_reg_byte67_byte6_r;
    readreg0_strobe <= s_readreg0_strobe_r;
    readreg1_strobe <= s_readreg1_strobe_r;
    readreg2_strobe <= s_readreg2_strobe_r;

end architecture RTL;
