package electron.main;
/**
	Make HTTP/HTTPS requests.
	@see http://electronjs.org/docs/api/client-request
**/
@:jsRequire("electron", "ClientRequest") extern class ClientRequest extends js.node.events.EventEmitter<electron.main.ClientRequest> {
	/**
		A Boolean specifying whether the request will use HTTP chunked transfer encoding or not. Defaults to false. The property is readable and writable, however it can be set only before the first write operation as the HTTP headers are not yet put on the wire. Trying to set the chunkedEncoding property after the first write will throw an error. Using chunked encoding is strongly recommended if you need to send a large request body as data will be streamed in small chunks instead of being internally buffered inside Electron process memory.
	**/
	var chunkedEncoding : Bool;
	function new(options:haxe.extern.EitherType<Any, String>):Void;
	/**
		Adds an extra HTTP header. The header name will issued as it is without lowercasing. It can be called only before first write. Calling this method after the first write will throw an error. If the passed value is not a String, its toString() method will be called to obtain the final value.
	**/
	function setHeader(name:String, value:Any):Void;
	function getHeader(name:String):Any;
	/**
		Removes a previously set extra header name. This method can be called only before first write. Trying to call it after the first write will throw an error.
	**/
	function removeHeader(name:String):Void;
	/**
		callback is essentially a dummy function introduced in the purpose of keeping similarity with the Node.js API. It is called asynchronously in the next tick after chunk content have been delivered to the Chromium networking layer. Contrary to the Node.js implementation, it is not guaranteed that chunk content have been flushed on the wire before callback is called. Adds a chunk of data to the request body. The first write operation may cause the request headers to be issued on the wire. After the first write operation, it is not allowed to add or remove a custom header.
	**/
	function write(chunk:haxe.extern.EitherType<String, js.node.Buffer>, ?encoding:String, ?callback:haxe.Constraints.Function):Void;
	/**
		Sends the last chunk of the request data. Subsequent write or end operations will not be allowed. The finish event is emitted just after the end operation.
	**/
	function end(?chunk:haxe.extern.EitherType<String, js.node.Buffer>, ?encoding:String, ?callback:haxe.Constraints.Function):Void;
	/**
		Cancels an ongoing HTTP transaction. If the request has already emitted the close event, the abort operation will have no effect. Otherwise an ongoing event will emit abort and close events. Additionally, if there is an ongoing response object,it will emit the aborted event.
	**/
	function abort():Void;
	/**
		Continues any deferred redirection request when the redirection mode is manual.
	**/
	function followRedirect():Void;
	/**
		You can use this method in conjunction with POST requests to get the progress of a file upload or other data transfer.
	**/
	function getUploadProgress():Any;
}
@:enum abstract ClientRequestEvent<T:(haxe.Constraints.Function)>(js.node.events.EventEmitter.Event<T>) to js.node.events.EventEmitter.Event<T> {
	var response : electron.main.ClientRequestEvent<electron.main.IncomingMessage -> Void> = "response";
	/**
		Emitted when an authenticating proxy is asking for user credentials. The callback function is expected to be called back with user credentials: Providing empty credentials will cancel the request and report an authentication error on the response object:
	**/
	var login : electron.main.ClientRequestEvent<Any -> haxe.Constraints.Function -> Void> = "login";
	/**
		Emitted just after the last chunk of the request's data has been written into the request object.
	**/
	var finish : electron.main.ClientRequestEvent<Void -> Void> = "finish";
	/**
		Emitted when the request is aborted. The abort event will not be fired if the request is already closed.
	**/
	var abort : electron.main.ClientRequestEvent<Void -> Void> = "abort";
	/**
		Emitted when the net module fails to issue a network request. Typically when the request object emits an error event, a close event will subsequently follow and no response object will be provided.
	**/
	var error : electron.main.ClientRequestEvent<js.Error -> Void> = "error";
	/**
		Emitted as the last event in the HTTP request-response transaction. The close event indicates that no more events will be emitted on either the request or response objects.
	**/
	var close : electron.main.ClientRequestEvent<Void -> Void> = "close";
	/**
		Emitted when there is redirection and the mode is manual. Calling request.followRedirect will continue with the redirection.
	**/
	var redirect : electron.main.ClientRequestEvent<Int -> String -> String -> Any -> Void> = "redirect";
}
