package;

import flixel.FlxState;

class PlayState extends FlxState
{
	public var money:SaveField = new SaveField('money', 0.0);
	public var lemons:SaveField = new SaveField('lemons', 0.0);

	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
