import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run

baseConfig = desktopConfig

main = do
    xmproc <- spawnPipe "xmobar"

    xmonad baseConfig
        { modMask       = mod4Mask
        , focusFollowsMouse = False
        , focusedBorderColor = "#000000"
        , terminal      = "termite"
        , logHook = dynamicLogWithPP $ sjanssenPP {ppOutput = hPutStrLn xmproc}
        , startupHook = startup
        , workspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "="]
        , manageHook = manageHook defaultConfig -- uses default too
        }

startup :: X()
startup = do
    spawn "termite"
