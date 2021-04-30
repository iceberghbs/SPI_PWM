library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity tb_pwm is
end tb_pwm;

architecture Behavioral of tb_pwm is
component SPI_PWM
	port	(	SDA		:in std_logic;
				SCL		:in std_logic;
				CS			:in std_logic;
                enable  :in std_logic;
				CLK50M	:in STD_logic;
				PWMOut	:out std_logic
			);
end component;

signal SDA, SCL, CS, enable, CLK50M, PWMOut : std_logic;
signal period, duty : unsigned(14 downto 0);
constant clk_period : time := 20ns;

begin
    u:SPI_PWM
        PORT MAP(SDA=>SDA, SCL=>SCL, CS=>CS, enable=>enable,
        CLK50M=>CLK50M, PWMOut=>PWMOut);
        
    clk:process
    begin
        CLK50M<='1';
        wait for clk_period/2;
        CLK50M<='0';
        wait for clk_period/2;
    end process;
    
    stim:process
    begin
    period <= TO_UNSIGNED(1, 15);
    duty <= TO_UNSIGNED(0, 15);
    -----------------------------------------------------------period------------------------------------------
        CS<='1';
        SCL<='0';
        wait for 40ns;
        CS<='0';
        wait for 40ns;
                        SDA<='1';  -- 15  -- period indicator
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(14);  -- 14
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(13);  -- 13
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(12);  -- 12
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(11);  -- 11
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(10);  -- 10
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(9);  -- 9
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(8);  -- 8
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(7);  -- 7
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(6);  -- 6
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(5);  -- 5
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(4);  -- 4
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(3);  -- 3
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(2);  -- 2
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(1);  -- 1
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=period(0);  -- 0
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
    ----------------------------------------------------------duty-------------------------------------------
        CS<='1';
        SCL<='0';
        wait for 40ns;
        CS<='0';
        wait for 40ns;
        
                        SDA<='0';  -- 15  -- duty indicator
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(14);  -- 14
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(13);  -- 13
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(12);  -- 12
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(11);  -- 11
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(10);  -- 10
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(9);  -- 9
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(8);  -- 8
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(7);  -- 7
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(6);  -- 6
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(5);  -- 5
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(4);  -- 4
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(3);  -- 3
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(2);  -- 2
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(1);  -- 1
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
                SDA<=duty(0);  -- 0
        wait for 40ns;
        SCL<='1';
        wait for 40ns;
        SCL<='0';
        wait for 40ns;
        
        enable<='1';
        
        wait;
    end process;

end Behavioral;
