package sphis.neba;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var baby:FlxSprite;

	override function create()
	{
		super.create();

		baby = new FlxSprite();
		baby.makeGraphic(128, 128, FlxColor.RED);
		baby.screenCenter();

		add(baby);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
