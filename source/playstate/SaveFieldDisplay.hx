package playstate;

import flixel.text.FlxText;
import flixel.FlxState;

class SaveFieldDisplay
{
	private var _saveField:SaveField;

	public var _textField:FlxText;
	public var _textFieldPrefix:String = '';

	public function new(state:FlxState, saveField:String, defaultValue:Dynamic)
	{
		_saveField = new SaveField(saveField, defaultValue);
		_textField = new FlxText(0, 0, 0, "", 16, false);

		state.add(_textField);
	}

	public function update()
	{
		_textField.text = _textFieldPrefix + get();
	}

	public function get():Dynamic
	{
		return _saveField.get();
	}

	public function set(value:Dynamic)
	{
		return _saveField.set(value);
	}
}
