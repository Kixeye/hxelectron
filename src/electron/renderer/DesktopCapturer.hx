package electron.renderer;
@:jsRequire("electron", "desktopCapturer") extern class DesktopCapturer {
	@:overload(function(options:{ /**
		An array of Strings that lists the types of desktop sources to be captured, available types are screen and window.
	**/
	var types : Array<String>; /**
		The size that the media source thumbnail should be scaled to. Default is 150 x 150. Set width or height to 0 when you do not need the thumbnails. This will save the processing time required for capturing the content of each window and screen.
	**/
	@:optional
	var thumbnailSize : electron.Size; /**
		Set to true to enable fetching window icons. The default value is false. When false the appIcon property of the sources return null. Same if a source has the type screen.
	**/
	@:optional
	var fetchWindowIcons : Bool; }, callback:haxe.Constraints.Function):Void { })
	static function getSources(options:{ /**
		An array of Strings that lists the types of desktop sources to be captured, available types are screen and window.
	**/
	var types : Array<String>; /**
		The size that the media source thumbnail should be scaled to. Default is 150 x 150. Set width or height to 0 when you do not need the thumbnails. This will save the processing time required for capturing the content of each window and screen.
	**/
	@:optional
	var thumbnailSize : electron.Size; /**
		Set to true to enable fetching window icons. The default value is false. When false the appIcon property of the sources return null. Same if a source has the type screen.
	**/
	@:optional
	var fetchWindowIcons : Bool; }):js.Promise<Any>;
}
