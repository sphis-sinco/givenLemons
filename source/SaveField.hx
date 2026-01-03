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
		if (!FlxG.save.isBound)
			return null;

		return Reflect.field(FlxG.save.data, this._field);
	}

	public function set(value:Dynamic)
	{
		if (!FlxG.save.isBound)
			return null;
        
		Reflect.setField(FlxG.save.data, this._field, value);
	}
}
