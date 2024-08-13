#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARDINAL_DIR round(direction/90)
#macro ROOM_START rm_title // start in rm_title
//#macro ROOM_START rm_woods

#macro PLAYER_START_X 1824
#macro PLAYER_START_Y 1344
#macro CARRY_HEIGHT 64

#macro RESOLUTION_W 1280
#macro RESOLUTION_H 720

#macro TRANSITION_SPEED 0.04
#macro OUT 0
#macro IN 1

enum ENEMY_STATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}

enum ITEM
{
	NONE,
	BOMB,
	BOW,
	HOOK,
	TYPE_COUNT
}

#macro KNOCKBACK 32




