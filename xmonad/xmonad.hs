import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run

baseConfig = desktopConfig

myManageHook = composeAll . concat $ [
    [ className =? "Termite" --> doShift "term" ],
    [ className =? "Chromium" --> doShift "web" ],
    [ className =? "Franz" --> doShift "web" ],
    [ className =? "Subl3" --> doShift "subl" ]
    ]

main = do
    xmproc <- spawnPipe "xmobar"

    xmonad baseConfig
        { modMask       = mod4Mask
        , focusFollowsMouse = False
        , focusedBorderColor = "#000000"
        , terminal      = "termite"
        , logHook = dynamicLogWithPP $ sjanssenPP {ppOutput = hPutStrLn xmproc}
        , startupHook = startup
        , workspaces = ["term", "web", "gogl", "subl", "tmp", "6", "7", "8", "9", "0", "-", "="]
        , manageHook = myManageHook <+> manageHook defaultConfig -- uses default too
        }

startup :: X()
startup = do
    spawn "termite"
    spawn "chromium"
    spawn "subl"
    spawn "telegram-desktop"
