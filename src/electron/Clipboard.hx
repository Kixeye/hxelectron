package electron;
@:jsRequire("electron", "clipboard") extern class Clipboard {
	static function readText(?type:String):String;
	/**
		Writes the text into the clipboard as plain text.
	**/
	static function writeText(text:String, ?type:String):Void;
	static function readHTML(?type:String):String;
	/**
		Writes markup to the clipboard.
	**/
	static function writeHTML(markup:String, ?type:String):Void;
	static function readImage(?type:String):electron.NativeImage;
	/**
		Writes image to the clipboard.
	**/
	static function writeImage(image:electron.NativeImage, ?type:String):Void;
	static function readRTF(?type:String):String;
	/**
		Writes the text into the clipboard in RTF.
	**/
	static function writeRTF(text:String, ?type:String):Void;
	/**
		Returns an Object containing title and url keys representing the bookmark in the clipboard. The title and url values will be empty strings when the bookmark is unavailable.
	**/
	@:electron_platforms(["macOS", "Windows"])
	static function readBookmark():Any;
	/**
		Writes the title and url into the clipboard as a bookmark. Note: Most apps on Windows don't support pasting bookmarks into them so you can use clipboard.write to write both a bookmark and fallback text to the clipboard.
	**/
	@:electron_platforms(["macOS", "Windows"])
	static function writeBookmark(title:String, url:String, ?type:String):Void;
	@:electron_platforms(["macOS"])
	static function readFindText():String;
	/**
		Writes the text into the find pasteboard as plain text. This method uses synchronous IPC when called from the renderer process.
	**/
	@:electron_platforms(["macOS"])
	static function writeFindText(text:String):Void;
	/**
		Clears the clipboard content.
	**/
	static function clear(?type:String):Void;
	static function availableFormats(?type:String):Array<String>;
	@:electron_platforms(["Experimental"])
	static function has(format:String, ?type:String):Bool;
	@:electron_platforms(["Experimental"])
	static function read(format:String):String;
	@:electron_platforms(["Experimental"])
	static function readBuffer(format:String):js.node.Buffer;
	/**
		Writes the buffer into the clipboard as format.
	**/
	@:electron_platforms(["Experimental"])
	static function writeBuffer(format:String, buffer:js.node.Buffer, ?type:String):Void;
	/**
		Writes data to the clipboard.
	**/
	static function write(data:{ @:optional
	var text : String; @:optional
	var html : String; @:optional
	var image : electron.NativeImage; @:optional
	var rtf : String; /**
		The title of the url at text.
	**/
	@:optional
	var bookmark : String; }, ?type:String):Void;
}
