package sphis.neba;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	public var worldTicks:Int = 0;

	public var debugText:FlxText;

	var baby:FlxSprite;

	override function create()
	{
		super.create();

		baby = new FlxSprite();
		baby.makeGraphic(128, 128, FlxColor.RED);
		baby.screenCenter();

		add(baby);

		debugText = new FlxText();

		debugText.x = 2;
		debugText.y = 2;
		debugText.fieldWidth = FlxG.width - 2;

		add(debugText);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		worldTicks += 1;

		debugText.visible = FlxG.keys.pressed.F3;
		if (FlxG.keys.pressed.F3)
		{
			renderDebugInfo();
		}
	}

	public function renderDebugInfo()
	{
		debugText.text = "Neba v" + Constants.APP_VERSION;

		debugText.text += "\n\nWorld Ticks: " + worldTicks;
	}
}
