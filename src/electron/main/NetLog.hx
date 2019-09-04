package electron.main;
@:jsRequire("electron", "netLog") extern class NetLog {
	/**
		A Boolean property that indicates whether network logs are recorded.
	**/
	static var currentlyLogging : Bool;
	/**
		A String property that returns the path to the current log file.
	**/
	static var currentlyLoggingPath : String;
	/**
		Starts recording network events to path.
	**/
	static function startLogging(path:String):Void;
	/**
		Stops recording network events. If not called, net logging will automatically end when app quits.
	**/
	@:overload(function(?callback:haxe.Constraints.Function):Void { })
	static function stopLogging():js.Promise<Any>;
}
