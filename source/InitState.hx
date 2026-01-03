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

		FlxG.switchState(() -> new PlayState());
	}
}
