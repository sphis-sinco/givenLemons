package;

import lime.app.Application;
import flixel.FlxG;
import flixel.FlxState;

class InitState extends FlxState
{
	override function create()
	{
		super.create();

		FlxG.save.bind('Gimon', Application.current.meta.get('company'));

		FlxG.save.data.money ??= 0.0;
		FlxG.save.data.lemons ??= 0;

		FlxG.switchState(() -> new PlayState());
	}
}
