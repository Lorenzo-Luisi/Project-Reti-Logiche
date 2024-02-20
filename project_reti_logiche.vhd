library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is 
    port ( 
        i_clk : in std_logic; 
        i_rst : in std_logic; 
        i_start : in std_logic; 
        i_w : in std_logic; 
        o_z0 : out std_logic_vector(7 downto 0); 
        o_z1 : out std_logic_vector(7 downto 0); 
        o_z2 : out std_logic_vector(7 downto 0); 
        o_z3 : out std_logic_vector(7 downto 0); 
        o_done : out std_logic; 
        o_mem_addr : out std_logic_vector(15 downto 0); 
        i_mem_data : in std_logic_vector(7 downto 0); 
        o_mem_we : out std_logic; 
        o_mem_en : out std_logic ); 
end project_reti_logiche;


architecture Behavioral of project_reti_logiche is

component shift_reg_sp2 is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_w : in STD_LOGIC;
           r1_load : in STD_LOGIC;
           r2_load : in STD_LOGIC;
           sel : out std_logic_vector(1 downto 0));
end component;

component shift_reg_sp16_reverse is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_w : in STD_LOGIC;
           r3_load : in STD_LOGIC;
           r4_load : in STD_LOGIC;
           r5_load : in STD_LOGIC;
           r6_load : in STD_LOGIC;
           r7_load : in STD_LOGIC;
           r8_load : in STD_LOGIC;
           r9_load : in STD_LOGIC;
           r10_load : in STD_LOGIC;
           r11_load : in STD_LOGIC;
           r12_load : in STD_LOGIC;
           r13_load : in STD_LOGIC;
           r14_load : in STD_LOGIC;
           r15_load : in STD_LOGIC;
           r16_load : in STD_LOGIC;
           r17_load : in STD_LOGIC;
           r18_load : in STD_LOGIC;
           r19_load : in STD_LOGIC;
           i_done_internal : in STD_LOGIC;
           o_shift_reg_sp16_reverse : out std_logic_vector(15 downto 0));
end component;

component sorter is
    Port(
        i_clk : in STD_LOGIC;
        i_rst : in STD_LOGIC;
        data : in std_logic_vector(7 downto 0);
        sort : in std_logic_vector(1 downto 0);
        ready_store : in STD_LOGIC;
        i_done_internal: in STD_LOGIC;
        o_muxZ0 : out std_logic_vector(7 downto 0);
        o_muxZ1 : out std_logic_vector(7 downto 0);
        o_muxZ2: out std_logic_vector(7 downto 0);
        o_muxZ3 : out std_logic_vector(7 downto 0));
end component;

signal r1_load : STD_LOGIC;
signal r2_load : STD_LOGIC;
signal r3_load : STD_LOGIC;
signal r4_load : STD_LOGIC;
signal r5_load : STD_LOGIC;
signal r6_load : STD_LOGIC;
signal r7_load : STD_LOGIC;
signal r8_load : STD_LOGIC;
signal r9_load : STD_LOGIC;
signal r10_load : STD_LOGIC;
signal r11_load : STD_LOGIC;
signal r12_load : STD_LOGIC;
signal r13_load : STD_LOGIC;
signal r14_load : STD_LOGIC;
signal r15_load : STD_LOGIC;
signal r16_load : STD_LOGIC;
signal r17_load : STD_LOGIC;
signal r18_load : STD_LOGIC;
signal r19_load : STD_LOGIC;
signal ready_store : STD_LOGIC;
signal rZ0_load : STD_LOGIC;
signal rZ1_load : STD_LOGIC;
signal rZ2_load : STD_LOGIC;
signal rZ3_load : STD_LOGIC;
signal i_done_internal : STD_LOGIC;
signal selector : std_logic_vector(1 downto 0);
type S is (S0,S1,S2,S3,S4,S5);
signal cur_state, next_state : S;

begin
SHIFT_REG_SORT : shift_reg_sp2 port map(
    i_clk,
    i_rst,
    i_w,
    r1_load,
    r2_load,
    selector
);

SHIFT_REG_DATA : shift_reg_sp16_reverse port map(
    i_clk,
    i_rst,
    i_w,
    r3_load,
    r4_load,
    r5_load,
    r6_load,
    r7_load,
    r8_load,
    r9_load,
    r10_load,
    r11_load,
    r12_load,
    r13_load,
    r14_load,
    r15_load,
    r16_load,
    r17_load,
    r18_load,
    r19_load,
    i_done_internal,
    o_mem_addr
);

SORT_OUTPUT : sorter port map(
    i_clk,
    i_rst,
    i_mem_data,
    selector,
    ready_store,
    i_done_internal,
    o_z0,
    o_z1,
    o_z2,
    o_z3
);
--macchina a stati
--o_done
o_done <= i_done_internal;

process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            cur_state <= S0;
        elsif rising_edge(i_clk) then
            cur_state <= next_state;
        end if;
end process;
    
process(cur_state, i_start)
    begin
        next_state <= cur_state;
        case cur_state is
            when S0 =>
                if i_start = '1' then
                    next_state <= S1;
                end if;
            when S1 =>
                if i_start = '1' then
                    next_state <= S2;
                end if;
            when S2 =>
                if i_start = '1' then
                    next_state <= S2;
                else
                    next_state <= S3;
                end if;
            when S3 =>
                next_state <= S4;
            when S4 =>
                next_state <= S5;
            when S5 =>
                next_state <= S0;
        end case;
end process;

process(cur_state)
    begin
        r1_load <= '0';
        r2_load <= '0';
        r3_load <= '0';
        r4_load <= '0';
        r5_load <= '0';
        r6_load <= '0';
        r7_load <= '0';
        r8_load <= '0';
        r9_load <= '0';
        r10_load <= '0';
        r11_load <= '0';
        r12_load <= '0';
        r13_load <= '0';
        r14_load <= '0';
        r15_load <= '0';
        r16_load <= '0';
        r17_load <= '0';
        r18_load <= '0';
        r19_load <= '0';
        ready_store <= '0';
        o_mem_en <= '0';
        o_mem_we <= '0';
        i_done_internal <= '0';        
        case cur_state is
            when S0 =>
                r1_load <= '1';
            when S1 =>
                r1_load <= '1';
                r2_load <= '1'; 
            when S2 =>
                r3_load <= '1';
                r4_load <= '1';
                r5_load <= '1';
                r6_load <= '1';
                r7_load <= '1';
                r8_load <= '1';
                r9_load <= '1';
                r10_load <= '1';
                r11_load <= '1';
                r12_load <= '1';
                r13_load <= '1';
                r14_load <= '1';
                r15_load <= '1';
                r16_load <= '1';
                r17_load <= '1';
                r18_load <= '1';
                r19_load <= '1';
            when S3 =>
                o_mem_en <= '1';
            when S4 =>
                ready_store <= '1';
            when S5 =>
                i_done_internal <= '1';
        end case;
end process;

end Behavioral;

--shift_reg_sp2
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_reg_sp2 is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_w : in STD_LOGIC;
           r1_load : in STD_LOGIC;
           r2_load : in STD_LOGIC;
           sel : out std_logic_vector(1 downto 0));
end shift_reg_sp2;

architecture Behavioral of shift_reg_sp2 is
signal o_reg1 : STD_LOGIC;
signal o_reg2 : STD_LOGIC;

begin
--demux_sel
sel(1) <= o_reg2;
sel(0) <= o_reg1;

--reg1
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_reg1 <= '0';
        elsif rising_edge(i_clk) then
            if(r1_load = '1') then
                o_reg1 <= i_w;
            end if;
        end if;
end process;
    
--reg2
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_reg2 <= '0';
        elsif rising_edge(i_clk) then
            if(r2_load = '1') then
                o_reg2 <= o_reg1;
            end if;
        end if;
end process;
    
end Behavioral;

--shift_reg_sp16_reverse
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_reg_sp16_reverse is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_w : in STD_LOGIC;
           r3_load : in STD_LOGIC;
           r4_load : in STD_LOGIC;
           r5_load : in STD_LOGIC;
           r6_load : in STD_LOGIC;
           r7_load : in STD_LOGIC;
           r8_load : in STD_LOGIC;
           r9_load : in STD_LOGIC;
           r10_load : in STD_LOGIC;
           r11_load : in STD_LOGIC;
           r12_load : in STD_LOGIC;
           r13_load : in STD_LOGIC;
           r14_load : in STD_LOGIC;
           r15_load : in STD_LOGIC;
           r16_load : in STD_LOGIC;
           r17_load : in STD_LOGIC;
           r18_load : in STD_LOGIC;
           r19_load : in STD_LOGIC;
           i_done_internal : in STD_LOGIC;
           o_shift_reg_sp16_reverse : out std_logic_vector(15 downto 0));
end shift_reg_sp16_reverse;

architecture Behavioral of shift_reg_sp16_reverse is
signal o_reg3 : STD_LOGIC;
signal o_reg4 : STD_LOGIC;
signal o_reg5 : STD_LOGIC;
signal o_reg6 : STD_LOGIC;
signal o_reg7 : STD_LOGIC;
signal o_reg8 : STD_LOGIC;
signal o_reg9 : STD_LOGIC;
signal o_reg10 : STD_LOGIC;
signal o_reg11 : STD_LOGIC;
signal o_reg12 : STD_LOGIC;
signal o_reg13 : STD_LOGIC;
signal o_reg14 : STD_LOGIC;
signal o_reg15 : STD_LOGIC;
signal o_reg16 : STD_LOGIC;
signal o_reg17 : STD_LOGIC;
signal o_reg18 : STD_LOGIC;
signal o_reg19 : STD_LOGIC;

begin
--o_shift_reg_sp16_reverse
o_shift_reg_sp16_reverse(0) <= o_reg18;
o_shift_reg_sp16_reverse(1) <= o_reg17;
o_shift_reg_sp16_reverse(2) <= o_reg16;
o_shift_reg_sp16_reverse(3) <= o_reg15;
o_shift_reg_sp16_reverse(4) <= o_reg14;
o_shift_reg_sp16_reverse(5) <= o_reg13;
o_shift_reg_sp16_reverse(6) <= o_reg12;
o_shift_reg_sp16_reverse(7) <= o_reg11;
o_shift_reg_sp16_reverse(8) <= o_reg10;
o_shift_reg_sp16_reverse(9) <= o_reg9;
o_shift_reg_sp16_reverse(10) <= o_reg8;
o_shift_reg_sp16_reverse(11) <= o_reg7;
o_shift_reg_sp16_reverse(12) <= o_reg6;
o_shift_reg_sp16_reverse(13) <= o_reg5;
o_shift_reg_sp16_reverse(14) <= o_reg4;
o_shift_reg_sp16_reverse(15) <= o_reg3;

--reg19
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg19 <= '0';
        elsif rising_edge(i_clk) then
            if(r19_load = '1') then
                o_reg19 <= i_w;
            end if;
        end if;
end process;

--reg18
process(i_clk, i_rst,i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg18 <= '0';
        elsif rising_edge(i_clk) then
            if(r18_load = '1') then
                o_reg18 <= o_reg19;
            end if;
        end if;
end process;

--reg17
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg17 <= '0';
        elsif rising_edge(i_clk) then
            if(r17_load = '1') then
                o_reg17 <= o_reg18;
            end if;
        end if;
end process;

--reg16
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg16 <= '0';
        elsif rising_edge(i_clk) then
            if(r16_load = '1') then
                o_reg16 <= o_reg17;
            end if;
        end if;
end process;

--reg15
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg15 <= '0';
        elsif rising_edge(i_clk) then
            if(r15_load = '1') then
                o_reg15 <= o_reg16;
            end if;
        end if;
end process;

--reg14
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg14 <= '0';
        elsif rising_edge(i_clk) then
            if(r14_load = '1') then
                o_reg14 <= o_reg15;
            end if;
        end if;
end process;

--reg13
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg13 <= '0';
        elsif rising_edge(i_clk) then
            if(r13_load = '1') then
                o_reg13 <= o_reg14;
            end if;
        end if;
end process;

--reg12
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg12 <= '0';
        elsif rising_edge(i_clk) then
            if(r12_load = '1') then
                o_reg12 <= o_reg13;
            end if;
        end if;
end process;

--reg11
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg11 <= '0';
        elsif rising_edge(i_clk) then
            if(r11_load = '1') then
                o_reg11 <= o_reg12;
            end if;
        end if;
end process;

--reg10
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg10 <= '0';
        elsif rising_edge(i_clk) then
            if(r10_load = '1') then
                o_reg10 <= o_reg11;
            end if;
        end if;
end process;

--reg9
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg9 <= '0';
        elsif rising_edge(i_clk) then
            if(r9_load = '1') then
                o_reg9 <= o_reg10;
            end if;
        end if;
end process;

--reg8
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg8 <= '0';
        elsif rising_edge(i_clk) then
            if(r8_load = '1') then
                o_reg8 <= o_reg9;
            end if;
        end if;
end process;

--reg7
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg7 <= '0';
        elsif rising_edge(i_clk) then
            if(r7_load = '1') then
                o_reg7 <= o_reg8;
            end if;
        end if;
end process;

--reg6
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg6 <= '0';
        elsif rising_edge(i_clk) then
            if(r6_load = '1') then
                o_reg6 <= o_reg7;
            end if;
        end if;
end process;

--reg5
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg5 <= '0';
        elsif rising_edge(i_clk) then
            if(r5_load = '1') then
                o_reg5 <= o_reg6;
            end if;
        end if;
end process;

--reg4
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg4 <= '0';
        elsif rising_edge(i_clk) then
            if(r4_load = '1') then
                o_reg4 <= o_reg5;
            end if;
        end if;
end process;

--reg3
process(i_clk, i_rst, i_done_internal)
    begin
        if(i_rst = '1' OR i_done_internal = '1') then
            o_reg3 <= '0';
        elsif rising_edge(i_clk) then
            if(r3_load = '1') then
                o_reg3 <= o_reg4;
            end if;
        end if;
end process;
    
end Behavioral;

--sorter
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sorter is
    Port(
        i_clk : in STD_LOGIC;
        i_rst : in STD_LOGIC;
        data : in std_logic_vector(7 downto 0);
        sort : in std_logic_vector(1 downto 0);
        ready_store : in STD_LOGIC;
        i_done_internal: in STD_LOGIC;
        o_muxZ0 : out std_logic_vector(7 downto 0);
        o_muxZ1 : out std_logic_vector(7 downto 0);
        o_muxZ2: out std_logic_vector(7 downto 0);
        o_muxZ3 : out std_logic_vector(7 downto 0));
end sorter;
architecture Behavioral of sorter is
signal o_regZ0 : std_logic_vector(7 downto 0);
signal o_regZ1 : std_logic_vector(7 downto 0);
signal o_regZ2 : std_logic_vector(7 downto 0);
signal o_regZ3 : std_logic_vector(7 downto 0);
begin

--regZ0
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_regZ0 <= "00000000";
        elsif rising_edge(i_clk) then
            if(sort = "00" AND ready_store = '1') then
                o_regZ0 <= data;
            end if;
        end if;
end process;

--regZ1
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_regZ1 <= "00000000";
        elsif rising_edge(i_clk) then
            if(sort = "01" AND ready_store = '1') then
                o_regZ1 <= data;
            end if;
        end if;
end process;

--regZ2
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_regZ2 <= "00000000";
        elsif rising_edge(i_clk) then
            if(sort = "10" AND ready_store = '1') then
                o_regZ2 <= data;
            end if;
        end if;
end process;

--regZ3
process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            o_regZ3 <= "00000000";
        elsif rising_edge(i_clk) then
            if(sort = "11" AND ready_store = '1') then
                o_regZ3 <= data;
            end if;
        end if;
end process;

--muxZ0
    with i_done_internal select
        o_muxZ0 <= "00000000" when '0',
                   o_regZ0 when '1',
                   "XXXXXXXX" when others;

--muxZ1
    with i_done_internal select
        o_muxZ1 <= "00000000" when '0',
                   o_regZ1 when '1',
                   "XXXXXXXX" when others;

--muxZ2
    with i_done_internal select
        o_muxZ2 <= "00000000" when '0',
                   o_regZ2 when '1',
                   "XXXXXXXX" when others;

--muxZ3
    with i_done_internal select
        o_muxZ3 <= "00000000" when '0',
                   o_regZ3 when '1',
                   "XXXXXXXX" when others;
end Behavioral;