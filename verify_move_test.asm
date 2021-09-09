.data
origin_pocket: .byte 2
distance: .byte 0
.align 2
state:        
    .byte 0         # bot_mancala       	(byte #0)
    .byte 0         # top_mancala       	(byte #1)
    .byte 6         # bot_pockets       	(byte #2)
    .byte 6         # top_pockets        	(byte #3)
    .byte 2         # moves_executed	(byte #4)
    .byte 'T'    # player_turn        		(byte #5)
    # game_board                     		(bytes #6-end)
    .asciiz
    "0004040404040404040404040000"
.text
.globl main
main:
la $a0, state
lb $a1, origin_pocket
lb $a2, distance
jal verify_move
# You must write your own code here to check the correctness of the function implementation.

move $a0, $v0
li $v0, 1
syscall

li $v0, 10
syscall

.include "hw3.asm"
