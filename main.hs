import Prelude
import Graphics.UI.SDL as SDL

quitHandler :: IO ()
quitHandler = do
	e <- waitEvent
	case e of
		Quit -> return ()
		otherwise -> quitHandler
main = do
	SDL.init[InitEverything]
	setVideoMode 640 480 32 []
	screen <- getVideoSurface
	SDL.flip screen
	quitHandler	
