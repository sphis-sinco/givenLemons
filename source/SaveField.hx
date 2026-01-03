import flixel.FlxG;

class SaveField
{
	var _field:String = '';

	public function new(field:String, defaultValue:Dynamic)
	{
		this._field = field;

		if (get() == null)
			set(defaultValue);
	}

	public function get():Dynamic
	{
		return Reflect.field(FlxG.save.data, this._field);
	}

	public function set(value:Dynamic)
	{
		Reflect.setField(FlxG.save.data, this._field, value);
	}
}
