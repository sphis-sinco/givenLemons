package;

import playstate.SaveFieldDisplays.LemonDisplay;
import playstate.SaveFieldDisplays.MoneyDisplay;
import playstate.SaveFieldDisplay;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var displays:Array<SaveFieldDisplay>;

	override public function create()
	{
		super.create();

		displays = [new MoneyDisplay(this), new LemonDisplay(this),];
		displays[0]._textField.y = 10;
		displays[1]._textField.y = 20;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		
		for (display in displays)
			display.update();
	}
}
