
class Ball
	new: (@x, @y, @w, @h, @x_vel, @y_vel, @is_alive) =>

	update: (dt) => 
		--ball trajectory--
		@x += @x_vel
		@y += @y_vel

		--ball right and left--
		if @x + @w >= border.w or
			@x <= border.x 
			@x_vel *= -1
		--@top--
		if @y <= border.y 
			@y_vel *= -1


	draw: =>
		--draws ball--
		if @is_alive
			love.graphics.rectangle 'fill', @x, @y, @w, @h
			