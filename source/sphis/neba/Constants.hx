package sphis.neba;

import lime.app.Application;

class Constants
{
	public static var APP_VERSION(get, never):String;

	static function get_APP_VERSION():String
	{
		return Application.current.meta.get("version");
	}
}
