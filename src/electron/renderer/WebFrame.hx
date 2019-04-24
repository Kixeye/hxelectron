package electron.renderer;
/**
	Customize the rendering of the current web page.
	@see http://electronjs.org/docs/api/web-frame
**/
@:jsRequire("electron", "webFrame") extern class WebFrame {
	/**
		A WebFrame representing top frame in frame hierarchy to which webFrame belongs, the property would be null if top frame is not in the current renderer process.
	**/
	static var top : electron.renderer.WebFrame;
	/**
		A WebFrame representing the frame which opened webFrame, the property would be null if there's no opener or opener is not in the current renderer process.
	**/
	static var opener : electron.renderer.WebFrame;
	/**
		A WebFrame representing parent frame of webFrame, the property would be null if webFrame is top or parent is not in the current renderer process.
	**/
	static var parent : electron.renderer.WebFrame;
	/**
		A WebFrame representing the first child frame of webFrame, the property would be null if webFrame has no children or if first child is not in the current renderer process.
	**/
	static var firstChild : electron.renderer.WebFrame;
	/**
		A WebFrame representing next sibling frame, the property would be null if webFrame is the last frame in its parent or if the next sibling is not in the current renderer process.
	**/
	static var nextSibling : electron.renderer.WebFrame;
	/**
		An Integer representing the unique frame id in the current renderer process. Distinct WebFrame instances that refer to the same underlying frame will have the same routingId.
	**/
	static var routingId : Int;
	/**
		Changes the zoom factor to the specified factor. Zoom factor is zoom percent divided by 100, so 300% = 3.0.
	**/
	static function setZoomFactor(factor:Float):Void;
	static function getZoomFactor():Float;
	/**
		Changes the zoom level to the specified level. The original size is 0 and each increment above or below represents zooming 20% larger or smaller to default limits of 300% and 50% of original size, respectively.
	**/
	static function setZoomLevel(level:Float):Void;
	static function getZoomLevel():Float;
	/**
		Sets the maximum and minimum pinch-to-zoom level.
	**/
	static function setVisualZoomLevelLimits(minimumLevel:Float, maximumLevel:Float):Void;
	/**
		Sets the maximum and minimum layout-based (i.e. non-visual) zoom level.
	**/
	static function setLayoutZoomLevelLimits(minimumLevel:Float, maximumLevel:Float):Void;
	/**
		Sets a provider for spell checking in input fields and text areas. The provider must be an object that has a spellCheck method that accepts an array of individual words for spellchecking. The spellCheck function runs asynchronously and calls the callback function with an array of misspelt words when complete. An example of using node-spellchecker as provider:
	**/
	static function setSpellCheckProvider(language:String, provider:{ /**
		.
	**/
	var spellCheck : haxe.Constraints.Function; }):Void;
	/**
		Inserts text to the focused element.
	**/
	static function insertText(text:String):Void;
	/**
		Evaluates code in page. In the browser window some HTML APIs like requestFullScreen can only be invoked by a gesture from the user. Setting userGesture to true will remove this limitation.
	**/
	static function executeJavaScript(code:String, ?userGesture:Bool, ?callback:haxe.Constraints.Function):js.lib.Promise<Any>;
	/**
		Work like executeJavaScript but evaluates scripts in an isolated context.
	**/
	static function executeJavaScriptInIsolatedWorld(worldId:Int, scripts:Array<electron.WebSource>, ?userGesture:Bool, ?callback:haxe.Constraints.Function):Void;
	/**
		Set the content security policy of the isolated world.
	**/
	@:electron_platforms(["Deprecated"])
	static function setIsolatedWorldContentSecurityPolicy(worldId:Int, csp:String):Void;
	/**
		Set the name of the isolated world. Useful in devtools.
	**/
	@:electron_platforms(["Deprecated"])
	static function setIsolatedWorldHumanReadableName(worldId:Int, name:String):Void;
	/**
		Set the security origin of the isolated world.
	**/
	@:electron_platforms(["Deprecated"])
	static function setIsolatedWorldSecurityOrigin(worldId:Int, securityOrigin:String):Void;
	/**
		Set the security origin, content security policy and name of the isolated world. Note: If the csp is specified, then the securityOrigin also has to be specified.
	**/
	static function setIsolatedWorldInfo(worldId:Int, info:{ /**
		Security origin for the isolated world.
	**/
	@:optional
	var securityOrigin : String; /**
		Content Security Policy for the isolated world.
	**/
	@:optional
	var csp : String; /**
		Name for isolated world. Useful in devtools.
	**/
	@:optional
	var name : String; }):Void;
	/**
		Returns an object describing usage information of Blink's internal memory caches. This will generate:
	**/
	static function getResourceUsage():Any;
	/**
		Attempts to free memory that is no longer being used (like images from a previous navigation). Note that blindly calling this method probably makes Electron slower since it will have to refill these emptied caches, you should only call it if an event in your app has occurred that makes you think your page is actually using less memory (i.e. you have navigated from a super heavy page to a mostly empty one, and intend to stay there).
	**/
	static function clearCache():Void;
	static function getFrameForSelector(selector:String):electron.renderer.WebFrame;
	static function findFrameByName(name:String):electron.renderer.WebFrame;
	static function findFrameByRoutingId(routingId:Int):electron.renderer.WebFrame;
}
