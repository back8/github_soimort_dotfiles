import XMonad
import XMonad.Layout.Spacing
import XMonad.Util.EZConfig

main = xmonad myConfig

myConfig = def
    { terminal = "sakura"
    , focusFollowsMouse = False
    , clickJustFocuses = False
    , borderWidth = 1
    , modMask = mod4Mask
    , normalBorderColor = "#222222"
    , focusedBorderColor = "#dddddd"
    , layoutHook = spacingRaw False (Border 18 12 12 12) True (Border 6 6 6 6) True $ layoutHook def
    --, layoutHook = layoutHook def  -- uncomment this and comment above line to refresh layout
    , startupHook = spawn "dzheader"
    }
    `additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock")
    , ((mod4Mask .|. shiftMask, xK_p), spawn "scrot -e 'mv $f ~/Pictures/'")
    ]
