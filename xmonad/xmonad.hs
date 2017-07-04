import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.Run

baseConfig = desktopConfig

myManageHook = composeAll . concat $ [
    [ className =? "Termite" --> doShift "term" ],
    [ className =? "Chromium" --> doShift "web" ],
    [ className =? "Franz" --> doShift "web" ],
    [ className =? "Gogland" --> doShift "gogl" ],
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
    spawn "trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --widthtype percent --width 100 --height 25"
    spawn "nm-applet"
    spawn "termite"
    spawn "termite"
    spawn "chromium"
    spawn "franz-bin"
    spawn "gogland"
    spawn "subl3"
