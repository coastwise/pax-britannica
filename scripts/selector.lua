assert(player, 'missing player argument')

picked = false

local fade = 0.2

self.sprite.image = assert(game.resources.factory_sprites[player])

function update()
  if not picked and game.the_one_button.held(player) then
    picked = true
  end
  if picked then
    fade = math.min(fade + 0.1, 1)
    self.sprite.color = {fade, fade, fade}
  end
end
