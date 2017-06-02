import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run

baseConfig = desktopConfig

main = do
    xmproc <- spawnPipe "xmobar"

    xmonad baseConfig
        { modMask       = mod4Mask
        , terminal      = "termite"
        , logHook = dynamicLogWithPP $ sjanssenPP {ppOutput = hPutStrLn xmproc}

        }
