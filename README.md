# Per-players-display-entities
a minecraft datapack to make display entites specific to a player


 ## to summon a new personal entity execute to a player the function bdjfm:new_display
   ex: function bdjfm:new_display {type:"block",x:0,y:10,z:8,Tags:'"my_block_display","ice_cream"',data:'block_state:{Name:"minecraft:ice"}'}
     for summon a block display visible by this player only  with tags indicated and data, the block will displayed a ice block at coordinate (0,10,8)

 
 position precision: 0.01
 
 position max : +21474836.47
 
 position min : -21474836.48
 
 
 don't change the transformation.translation value of the entity display after sommoned it, this will not work, use the function bdjfm:move
 
 don't change xyz coordinates, this will not work, use the function bdjfm:move
 
 you can change Rotation and all other data of the entity after summoned it but keep in head that the entity will follow the player.


## to move a personal display block, use the function bdjfm:move

 ex: /function bdjfm:move {tag:"hub",type:"tp",dx:0,dy:10,dz:80}
 
 will tp at (0,10,80) the personal entity display with tag "hub"

  ex: /function bdjfm:move {tag:"up",type:"xyz",dx:0.5,dy:0,dz:0}
  
  will move 0.5 blocks up the personal entity display with tag "up"

  ex: /function bdjfm:move {tag:"forward",type:"polar",dx:0,dy:0,dz:2}
  
  will move 2 blocks forward the personal entity display with tag "forward"


## to execute a command by a personal display block, use the function bdjfm:execute

  ex: /function bdjfm:move {tag:"waw",cmd:"particle flame"}
  
  will make a flame particle where the personal display entity with tag "hub" is displayed

