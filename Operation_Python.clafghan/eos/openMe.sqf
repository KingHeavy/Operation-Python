EOSspawn=compile preProcessFileLineNumbers "eos\core\EOSlaunch.sqf";null=[]execVM "eos\core\spawn.sqf";onplayerConnected{[]execVM "eos\fn\EOSmkrs.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0=1
 1=2,4
 2=4,8
 3=8,12
 4=12,16
 5=16,20

EXAMPLE CALL - EOS
null=[["MKR1"],[2,1,100],[2,1,100],[1,2,30],[2,60],[2,100],[1,0,10],[1,0,250,WEST,FALSE,FALSE]]call EOSspawn;
null=[["MKR"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]]call EOSspawn;

EXAMPLE CALL - REINF
null=[["MKR"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]]call reinfSpawn;
null=[["MKR"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]]call reinfSpawn;
*/
winColor="colorWEST";badColor="colorRed";
EOSdmg=1.7;

null=[["mkr1"],[20,1,100],[20,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr2"],[8,1,100],[8,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr3"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr4"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr5"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr6"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr7"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr8"],[8,1,100],[8,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr9"],[8,1,100],[8,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr10"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr11"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr12"],[8,1,100],[8,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr13"],[15,1,100],[15,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr14"],[10,1,100],[10,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr15"],[8,1,100],[8,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr16"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr17"],[2,1,100],[2,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr18"],[15,1,100],[15,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr19"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr20"],[5,1,100],[5,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;
null=[["mkr21"],[0,0,100],[0,0,100],[0,0,0],[0,0],[0,0],[0,0,0],[3,1,175,CIVILIAN,TRUE,FALSE]]call EOSspawn;