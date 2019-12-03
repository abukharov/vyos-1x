<tagNode name="vif-s">
  <properties>
    <help>QinQ TAG-S Virtual Local Area Network (VLAN) ID</help>
    <constraint>
      <validator name="numeric" argument="--range 0-4094"/>
    </constraint>
    <constraintErrorMessage>VLAN ID must be between 0 and 4094</constraintErrorMessage>
  </properties>
  <children>
    #include <include/address-ipv4-ipv6-dhcp.xml.i>
    <leafNode name="description">
      <properties>
        <help>Interface description</help>
        <constraint>
          <regex>^.{1,256}$</regex>
        </constraint>
        <constraintErrorMessage>Interface description too long (limit 256 characters)</constraintErrorMessage>
      </properties>
    </leafNode>
    #include <include/dhcp-dhcpv6-options.xml.i>
    <leafNode name="disable-link-detect">
      <properties>
        <help>Ignore link state changes</help>
        <valueless/>
      </properties>
    </leafNode>
    <leafNode name="disable">
      <properties>
        <help>Disable this bridge interface</help>
        <valueless/>
      </properties>
    </leafNode>
    <leafNode name="ethertype">
      <properties>
        <help>Set Ethertype</help>
        <completionHelp>
          <list>0x88A8 0x8100</list>
        </completionHelp>
        <valueHelp>
          <format>0x88A8</format>
          <description>802.1ad</description>
        </valueHelp>
        <valueHelp>
          <format>0x8100</format>
          <description>802.1q</description>
        </valueHelp>
        <constraint>
          <regex>(0x88A8|0x8100)</regex>
        </constraint>
        <constraintErrorMessage>Ethertype must be 0x88A8 or 0x8100</constraintErrorMessage>
      </properties>
    </leafNode>
    <leafNode name="mac">
      <properties>
        <help>Media Access Control (MAC) address</help>
        <valueHelp>
          <format>h:h:h:h:h:h</format>
          <description>Hardware (MAC) address</description>
        </valueHelp>
        <constraint>
          <validator name="mac-address"/>
        </constraint>
      </properties>
    </leafNode>
    <leafNode name="mtu">
      <properties>
        <help>Maximum Transmission Unit (MTU)</help>
        <valueHelp>
          <format>68-9000</format>
          <description>Maximum Transmission Unit</description>
        </valueHelp>
        <constraint>
          <validator name="numeric" argument="--range 68-9000"/>
        </constraint>
        <constraintErrorMessage>MTU must be between 68 and 9000</constraintErrorMessage>
      </properties>
    </leafNode>
    <tagNode name="vif-c">
      <properties>
        <help>QinQ TAG-C Virtual Local Area Network (VLAN) ID</help>
        <constraint>
          <validator name="numeric" argument="--range 0-4094"/>
        </constraint>
        <constraintErrorMessage>VLAN ID must be between 0 and 4094</constraintErrorMessage>
      </properties>
      <children>
        #include <include/address-ipv4-ipv6-dhcp.xml.i>
        <leafNode name="description">
          <properties>
            <help>Interface description</help>
            <constraint>
              <regex>^.{1,256}$</regex>
            </constraint>
            <constraintErrorMessage>Interface description too long (limit 256 characters)</constraintErrorMessage>
          </properties>
        </leafNode>
        #include <include/dhcp-dhcpv6-options.xml.i>
        <leafNode name="disable-link-detect">
          <properties>
            <help>Ignore link state changes</help>
            <valueless/>
          </properties>
        </leafNode>
        <leafNode name="disable">
          <properties>
            <help>Disable this bridge interface</help>
            <valueless/>
          </properties>
        </leafNode>
        <leafNode name="mac">
          <properties>
            <help>Media Access Control (MAC) address</help>
            <valueHelp>
              <format>h:h:h:h:h:h</format>
              <description>Hardware (MAC) address</description>
            </valueHelp>
            <constraint>
              <validator name="mac-address"/>
            </constraint>
          </properties>
        </leafNode>
        <leafNode name="mtu">
          <properties>
            <help>Maximum Transmission Unit (MTU)</help>
            <valueHelp>
              <format>68-9000</format>
              <description>Maximum Transmission Unit</description>
            </valueHelp>
            <constraint>
              <validator name="numeric" argument="--range 68-9000"/>
            </constraint>
            <constraintErrorMessage>MTU must be between 68 and 9000</constraintErrorMessage>
          </properties>
        </leafNode>
      </children>
    </tagNode>
  </children>
</tagNode>
