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
        }

startup :: X()
startup = do
    spawn "trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --widthtype percent --width 100 --height 25"
    spawn "nm-applet"
