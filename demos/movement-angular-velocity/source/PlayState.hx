package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	
	private var sprite:FlxSprite;
	private var timer:Float = 0;
	private var speed:Int = 1;
	
	override public function create():Void
	{
		bgColor = 0;
		super.create();
		
		sprite = new FlxSprite(AssetPaths.arrow__png);
		sprite.x = FlxG.width / 2 - sprite.width / 2;
		sprite.y = FlxG.height / 2 - sprite.height / 2;
		
		sprite.angularVelocity = 30;
		
		add(sprite);
	}

	override public function update(elapsed:Float):Void
	{
		timer += elapsed;
		if (timer >= 2)
		{
			timer = 0;
			speed++;
			if (speed >= 8)
				speed = 1;
			sprite.angularVelocity = speed * 100;
		}
		
		super.update(elapsed);
	}
}
