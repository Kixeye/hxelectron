package electron;

///// GENERATED - DO NOT EDIT /////

/**
**/
@:jsRequire("electron", "systemPreferences") @:require(electron_main) @:require(electron) extern class SystemPreferences extends js.node.events.EventEmitter<electron.SystemPreferences> {
	static function isDarkMode():Bool;
	static function isSwipeTrackingFromScrollEventsEnabled():Bool;
	/**
		Posts event as native notifications of macOS. The userInfo is an Object that contains the user information dictionary sent along with the notification.
	**/
	static function postNotification(event:String, userInfo:Dynamic):Void;
	/**
		Posts event as native notifications of macOS. The userInfo is an Object that contains the user information dictionary sent along with the notification.
	**/
	static function postLocalNotification(event:String, userInfo:Dynamic):Void;
	/**
		Subscribes to native notifications of macOS, callback will be called with callback(event, userInfo) when the corresponding event happens. The userInfo is an Object that contains the user information dictionary sent along with the notification. The id of the subscriber is returned, which can be used to unsubscribe the event. Under the hood this API subscribes to NSDistributedNotificationCenter, example values of event are:
	**/
	static function subscribeNotification(event:String, callback:haxe.Constraints.Function):Void;
	/**
		Removes the subscriber with id.
	**/
	static function unsubscribeNotification(id:Int):Void;
	/**
		Same as subscribeNotification, but uses NSNotificationCenter for local defaults. This is necessary for events such as NSUserDefaultsDidChangeNotification
	**/
	static function subscribeLocalNotification(event:String, callback:haxe.Constraints.Function):Void;
	/**
		Same as unsubscribeNotification, but removes the subscriber from NSNotificationCenter.
	**/
	static function unsubscribeLocalNotification(id:Int):Void;
	/**
		Get the value of key in system preferences. This API reads from NSUserDefaults on macOS, some popular key and types are:
	**/
	static function getUserDefault(key:String, type:String):Void;
	/**
		This method returns true if DWM composition (Aero Glass) is enabled, and false otherwise. An example of using it to determine if you should create a transparent window or not (transparent windows won't work correctly when DWM composition is disabled):
	**/
	static function isAeroGlassEnabled():Void;
	static function getAccentColor():String;
	static function getColor(color:String):String;
	static function isInvertedColorScheme():Bool;
}