#!/bin/sh

sed -e 's/"online-mode" => true/"online-mode" => false/g'  src/pocketmine/Server.php > src/pocketmine/a
rm src/pocketmine/Server.php
mv  src/pocketmine/a src/pocketmine/Server.php
cat src/pocketmine/Server.php

sed -e 's/onRun(int/onRun(/g'  src/pocketmine/scheduler/Task.php > src/pocketmine/b
rm src/pocketmine/scheduler/Task.php
mv  src/pocketmine/b src/pocketmine/scheduler/Task.php
cat src/pocketmine/scheduler/Task.php



grep -rl "string \$commandLabel" ./src/pocketmine | xargs perl -i -pe "s/string \$commandLabel/\$commandLabel/g"

rm src/pocketmine/plugin/PluginManager.php
wget https://gist.githubusercontent.com/haniokasai/05e6dee527ff763c0ae9239f3ad8bb04/raw/5980ac2a5ed2c6d88472bb1a8f4be5b94751bf30/PluginManager.php -P src/pocketmine/plugin/

rm src/pocketmine/plugin/PluginBase.php
wget https://gist.githubusercontent.com/haniokasai/227e72f0f19ec6fc3b3217db25d7dca0/raw/b277b5a9b80543602ba6e6345d5e7008fc2f7a35/PluginBase.php -P src/pocketmine/plugin/



rm src/pocketmine/command/CommandExecutor.php
wget https://gist.githubusercontent.com/haniokasai/227e72f0f19ec6fc3b3217db25d7dca0/raw/b277b5a9b80543602ba6e6345d5e7008fc2f7a35/CommandExecutor.php -P src/pocketmine/command/


cat src/pocketmine/command/Command.php
