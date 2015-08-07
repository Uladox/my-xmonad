import XMonad
import XMonad.Util.EZConfig

main = xmonad $ defaultConfig
    { terminal    = "terminology"
    , modMask     = mod4Mask
    , borderWidth = 3
    }
    `additionalKeys`
    [ ((mod4Mask, xK_o), spawn "emacs")
    , ((mod4Mask, xK_p), spawn "firefox")
    , ((mod4Mask, xK_c), spawn "~/.xmonad/xcats.sh start")
    , ((mod4Mask, xK_x), spawn "~/.xmonad/xcats.sh stop")]