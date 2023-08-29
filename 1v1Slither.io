import pygame

pygame.init()

import time

import random


fps = 8
width = 601
height = 601
white = (255, 255, 255)
black = (0, 0, 0)
blue = (0, 0, 255)
cyan = (128, 128, 255)
red = (255, 0, 0)
magenta = (255, 128, 128)
green = (0, 255, 0)
dgreen = (0, 64, 0)
rgreen = (0, random.randint(0, 255), 0)
tan = (255, 255, 0)
randomcolor = (random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))
tile = 25
r1x = 1
r1y = 301
r2x = 576
r2y = 301
up = (0, -tile)
left = (-tile, 0)
down = (0, tile)
right = (tile, 0)
direction1 = up
direction2 = down


b101x = r1x
b101y = r1y + 1*tile

b102x = r1x
b102y = r1y + 2*tile

b103x = r1x
b103y = r1y + 3*tile

b104x = r1x
b104y = r1y + 4*tile

b105x = r1x
b105y = r1y + 5*tile

b106x = r1x
b106y = r1y + 6*tile

b107x = r1x
b107y = r1y + 7*tile

b108x = r1x
b108y = r1y + 8*tile

b109x = r1x
b109y = r1y + 9*tile

b1010x = r1x
b1010y = r1y + 10*tile

b1011x = r1x
b1011y = r1y + 11*tile



b201x = r2x
b201y = r2y - 1*tile

b202x = r2x
b202y = r2y - 2*tile

b203x = r2x
b203y = r2y - 3*tile

b204x = r2x
b204y = r2y - 4*tile

b205x = r2x
b205y = r2y - 5*tile

b206x = r2x
b206y = r2y - 6*tile

b207x = r2x
b207y = r2y - 7*tile

b208x = r2x
b208y = r2y - 8*tile

b209x = r2x
b209y = r2y - 9*tile

b2010x = r2x
b2010y = r2y - 10*tile

b2011x = r2x
b2011y = r2y - 11*tile










screen = pygame.display.set_mode((width, height))

clock = pygame.time.Clock()

def draw_grid(color):
	for x in range(0, width, tile):
		pygame.draw.line(screen, color, (x,0), (x, height))
	for y in range(0, height, tile):
		pygame.draw.line(screen, color, (0, y), (width, y))

	
	
	




run = True
win = False

while run:

	screen.fill(black)
	draw_grid(white)
	
	




	for event in pygame.event.get():
		if event.type  == pygame.QUIT:
			run = False
		if event.type == pygame.KEYDOWN:
			if (event.key == pygame.K_w) and (direction1 != down):
				direction1 = up
			if (event.key == pygame.K_a) and (direction1 != right):
				direction1 = left
			if (event.key == pygame.K_s) and (direction1 != up):
				direction1 = down
			if (event.key == pygame.K_d) and (direction1 != left):
				direction1 = right
			if (event.key == pygame.K_i) and (direction2 != down):
				direction2 = up
			if (event.key == pygame.K_j) and (direction2 != right):
				direction2 = left
			if (event.key == pygame.K_k) and (direction2 != up):
				direction2 = down
			if (event.key == pygame.K_l) and (direction2 != left):
				direction2 = right


	b1011x = b1010x
	b1011y = b1010y
	b1010x = b109x
	b1010y = b109y
	b109x = b108x
	b109y = b108y
	b108x = b107x
	b108y = b107y
	b107x = b106x
	b107y = b106y
	b106x = b105x
	b106y = b105y
	b105x = b104x
	b105y = b104y
	b104x = b103x
	b104y = b103y
	b103x = b102x
	b103y = b102y
	b102x = b101x
	b102y = b101y
	b101x = r1x
	b101y = r1y

	b2011x = b2010x
	b2011y = b2010y
	b2010x = b209x
	b2010y = b209y
	b209x = b208x
	b209y = b208y
	b208x = b207x
	b208y = b207y
	b207x = b206x
	b207y = b206y
	b206x = b205x
	b206y = b205y
	b205x = b204x
	b205y = b204y
	b204x = b203x
	b204y = b203y
	b203x = b202x
	b203y = b202y
	b202x = b201x
	b202y = b201y
	b201x = r2x
	b201y = r2y


	if direction1 == left:
		r1x = r1x - tile
	if direction1 == right:
		r1x = r1x + tile
	if direction1 == up:
		r1y = r1y - tile
	if direction1 == down:
		r1y = r1y + tile

	if direction2 == left:
		r2x = r2x - tile
	if direction2 == right:
		r2x = r2x + tile
	if direction2 == up:
		r2y = r2y - tile
	if direction2 == down:
		r2y = r2y + tile


	
	
	b101 = pygame.Rect(b101x, b101y, 24, 24)
	pygame.draw.rect(screen, cyan, b101) 
	
	b102 = pygame.Rect(b102x, b102y, 24, 24) 
	pygame.draw.rect(screen, cyan, b102)
	
	b103 = pygame.Rect(b103x, b103y, 24, 24) 
	pygame.draw.rect(screen, cyan, b103)
	
	b104 = pygame.Rect(b104x, b104y, 24, 24)
	pygame.draw.rect(screen, cyan, b104) 
	
	b105 = pygame.Rect(b105x, b105y, 24, 24) 
	pygame.draw.rect(screen, cyan, b105)
	
	b106 = pygame.Rect(b106x, b106y, 24, 24) 
	pygame.draw.rect(screen, cyan, b106)

	b107 = pygame.Rect(b107x, b107y, 24, 24)
	pygame.draw.rect(screen, cyan, b107) 
	
	b108 = pygame.Rect(b108x, b108y, 24, 24) 
	pygame.draw.rect(screen, cyan, b108)
	
	b109 = pygame.Rect(b109x, b109y, 24, 24) 
	pygame.draw.rect(screen, cyan, b109)

	b1010 = pygame.Rect(b1010x, b1010y, 24, 24) 
	pygame.draw.rect(screen, cyan, b1010)

	b1011 = pygame.Rect(b1011x, b1011y, 24, 24) 
	pygame.draw.rect(screen, cyan, b1011)

	

	

	b201 = pygame.Rect(b201x, b201y, 24, 24)
	pygame.draw.rect(screen, magenta, b201) 
	
	b202 = pygame.Rect(b202x, b202y, 24, 24) 
	pygame.draw.rect(screen, magenta, b202)
	
	b203 = pygame.Rect(b203x, b203y, 24, 24) 
	pygame.draw.rect(screen, magenta, b203)
	
	b204 = pygame.Rect(b204x, b204y, 24, 24)
	pygame.draw.rect(screen, magenta, b204) 
	
	b205 = pygame.Rect(b205x, b205y, 24, 24) 
	pygame.draw.rect(screen, magenta, b205)
	
	b206 = pygame.Rect(b206x, b206y, 24, 24) 
	pygame.draw.rect(screen, magenta, b206)

	b207 = pygame.Rect(b207x, b207y, 24, 24)
	pygame.draw.rect(screen, magenta, b207) 
	
	b208 = pygame.Rect(b208x, b208y, 24, 24) 
	pygame.draw.rect(screen, magenta, b208)
	
	b209 = pygame.Rect(b209x, b209y, 24, 24) 
	pygame.draw.rect(screen, magenta, b209)

	b2010 = pygame.Rect(b2010x, b2010y, 24, 24) 
	pygame.draw.rect(screen, magenta, b2010)

	b2011 = pygame.Rect(b2011x, b2011y, 24, 24) 
	pygame.draw.rect(screen, magenta, b2011)

	player2 = pygame.Rect(r2x, r2y, 24, 24)
	pygame.draw.rect(screen, red, player2)

	player1 = pygame.Rect(r1x, r1y, 24, 24)
	pygame.draw.rect(screen, blue, player1)

	
	

	if ((r1x, r1y) == (b201x, b201y)) or ((r1x, r1y) == (b202x, b202y)) or ((r1x, r1y) == (b203x, b203y)) or ((r1x, r1y) == (b204x, b204y)) or ((r1x, r1y) == (b205x, b205y)) or ((r1x, r1y) == (b206x, b206y)) or ((r1x, r1y) == (b207x, b207y)) or ((r1x, r1y) == (b208x, b208y)) or ((r1x, r1y) == (b209x, b209y)) or ((r1x, r1y) == (b2010x, b2010y)) or ((r1x, r1y) == (b2011x, b2011y)):
		draw_grid(red)
		winner = red
		win = True


	if ((r2x, r2y) == (b101x, b101y)) or ((r2x, r2y) == (b102x, b102y)) or ((r2x, r2y) == (b103x, b103y)) or ((r2x, r2y) == (b104x, b104y)) or ((r2x, r2y) == (b105x, b105y)) or ((r2x, r2y) == (b106x, b106y)) or ((r2x, r2y) == (b107x, b107y)) or ((r2x, r2y) == (b108x, b108y)) or ((r2x, r2y) == (b109x, b109y)) or ((r2x, r2y) == (b1010x, b1010y)) or ((r2x, r2y) == (b1011x, b1011y)):
		draw_grid(blue)
		winner = blue
		win = True
		
		
	if r1x > 601:
		direction1 = left
	if r1x < 0:
		direction1 = right
	if r1y > 601:
		direction1 = up
	if r1y < 0:
		direction1 = down

	if r2x > 601:
		direction2 = left
	if r2x < 0:
		direction2 = right
	if r2y > 601:
		direction2 = up
	if r2y < 0:
		direction2 = down
	

	
	
	

	pygame.display.update()

	if win == True:
		time.sleep(2)
		screen.fill(winner)
		pygame.display.update()
		time.sleep(1)
		run = False

	clock.tick(fps)

pygame.quit()



