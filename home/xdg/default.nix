{ ... }:

{
  xdg = {
    enable = true;

    userDirs = {
      enable = true;
      createDirectories = true;
    };
    configFile."Thunar/uca.xml" = {
      force = true;

      text = ''
        <?xml version="1.0" encoding="UTF-8"?>
        <actions>
          <action>
            <icon>utilities-terminal</icon>
            <name>Open Terminal Here</name>
            <unique-id>open-terminal-here</unique-id>
            <command>kitty --directory %f</command>
            <description>Open Kitty terminal here</description>
            <range/>
            <patterns>*</patterns>
            <directories/>
          </action>
        </actions>
      '';
    };
  };
}
