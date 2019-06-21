package electron.main;
/**
	Add items to native application menus and context menus.
	@see http://electronjs.org/docs/api/menu-item
**/
@:jsRequire("electron", "MenuItem") extern class MenuItem {
	/**
		A String indicating the item's unique id, this property can be dynamically changed.
	**/
	var id : String;
	/**
		A String indicating the item's visible label, this property can be dynamically changed.
	**/
	var label : String;
	/**
		A Function that is fired when the MenuItem receives a click event. It can be called with menuItem.click(event, focusedWindow, focusedWebContents).
	**/
	var click : haxe.Constraints.Function;
	/**
		A Menu (optional) containing the menu item's submenu, if present.
	**/
	var submenu : electron.main.Menu;
	/**
		A String indicating the type of the item.
	**/
	var type : String;
	/**
		A String (optional) indicating the item's role, if set. Can be undo, redo, cut, copy, paste, pasteandmatchstyle, delete, selectall, reload, forcereload, toggledevtools, resetzoom, zoomin, zoomout, togglefullscreen, window, minimize, close, help, about, services, hide, hideothers, unhide, quit, startspeaking, stopspeaking, close, minimize, zoom, front, appMenu, fileMenu, editMenu, viewMenu or windowMenu
	**/
	var role : String;
	/**
		A String (optional) indicating the item's accelerator, if set.
	**/
	var accelerator : String;
	/**
		A NativeImage | String (optional) indicating the item's icon, if set.
	**/
	var icon : electron.NativeImage;
	/**
		A String indicating the item's sublabel, this property can be dynamically changed.
	**/
	var sublabel : String;
	/**
		A Boolean indicating whether the item is enabled, this property can be dynamically changed.
	**/
	var enabled : Bool;
	/**
		A Boolean indicating whether the item is visible, this property can be dynamically changed.
	**/
	var visible : Bool;
	/**
		A Boolean indicating whether the item is checked, this property can be dynamically changed. A checkbox menu item will toggle the checked property on and off when selected. A radio menu item will turn on its checked property when clicked, and will turn off that property for all adjacent items in the same menu. You can add a click function for additional behavior.
	**/
	var checked : Bool;
	/**
		A Boolean indicating if the accelerator should be registered with the system or just displayed, this property can be dynamically changed.
	**/
	var registerAccelerator : Bool;
	/**
		A Number indicating an item's sequential unique id.
	**/
	var commandId : Float;
	/**
		A Menu that the item is a part of.
	**/
	var menu : electron.main.Menu;
	function new(options:{ /**
		Will be called with click(menuItem, browserWindow, event) when the menu item is clicked.
	**/
	@:optional
	var click : haxe.Constraints.Function; /**
		Can be undo, redo, cut, copy, paste, pasteandmatchstyle, delete, selectall, reload, forcereload, toggledevtools, resetzoom, zoomin, zoomout, togglefullscreen, window, minimize, close, help, about, services, hide, hideothers, unhide, quit, startspeaking, stopspeaking, close, minimize, zoom, front, appMenu, fileMenu, editMenu, viewMenu or windowMenu Define the action of the menu item, when specified the click property will be ignored. See .
	**/
	@:optional
	var role : String; /**
		Can be normal, separator, submenu, checkbox or radio.
	**/
	@:optional
	var type : String; @:optional
	var label : String; @:optional
	var sublabel : String; @:optional
	var accelerator : electron.Accelerator; @:optional
	var icon : haxe.extern.EitherType<electron.NativeImage, String>; /**
		If false, the menu item will be greyed out and unclickable.
	**/
	@:optional
	var enabled : Bool; /**
		If false, the menu item will be entirely hidden.
	**/
	@:optional
	var visible : Bool; /**
		Should only be specified for checkbox or radio type menu items.
	**/
	@:optional
	var checked : Bool; /**
		If false, the accelerator won't be registered with the system, but it will still be displayed. Defaults to true.
	**/
	@:optional
	var registerAccelerator : Bool; /**
		Should be specified for submenu type menu items. If submenu is specified, the type: 'submenu' can be omitted. If the value is not a then it will be automatically converted to one using Menu.buildFromTemplate.
	**/
	@:optional
	var submenu : haxe.extern.EitherType<Array<Dynamic>, electron.main.Menu>; /**
		Unique within a single menu. If defined then it can be used as a reference to this item by the position attribute.
	**/
	@:optional
	var id : String; /**
		Inserts this item before the item with the specified label. If the referenced item doesn't exist the item will be inserted at the end of the menu. Also implies that the menu item in question should be placed in the same “group” as the item.
	**/
	@:optional
	var before : Array<String>; /**
		Inserts this item after the item with the specified label. If the referenced item doesn't exist the item will be inserted at the end of the menu.
	**/
	@:optional
	var after : Array<String>; /**
		Provides a means for a single context menu to declare the placement of their containing group before the containing group of the item with the specified label.
	**/
	@:optional
	var beforeGroupContaining : Array<String>; /**
		Provides a means for a single context menu to declare the placement of their containing group after the containing group of the item with the specified label.
	**/
	@:optional
	var afterGroupContaining : Array<String>; }):Void;
}
