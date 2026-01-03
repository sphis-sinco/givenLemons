package playstate;

import flixel.FlxState;

class LemonDisplay extends SaveFieldDisplay
{
	override public function new(state:FlxState)
	{
		super(state, 'lemons', 0);
		_textFieldPrefix = 'Lemons: ';
	}
}


class MoneyDisplay extends SaveFieldDisplay
{
	override public function new(state:FlxState)
	{
		super(state, 'money', 0.0);
		_textFieldPrefix = 'Money: $';
	}
}
