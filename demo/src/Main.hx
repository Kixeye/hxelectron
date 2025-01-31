
import js.Node;
import electron.main.App;
import electron.main.BrowserWindow;

class Main {

	static var window : BrowserWindow;

	static function createWindow() {
		window = new BrowserWindow( {
			width: 720, height: 480,
			webPreferences: {
				nodeIntegration: true
			}
		} );
		window.on( closed, function() {
			window = null;
		});
		window.loadFile( 'app.html' );
		//window.webContents.openDevTools();
	}

	static function main() {

		electron.main.App.on( ready, function(e) {
			createWindow();
		});

		electron.main.App.on( window_all_closed, function(e) {
			if( Node.process.platform != 'darwin' )
				electron.main.App.quit();
		});
	}

}
