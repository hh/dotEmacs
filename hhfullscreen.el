(set-frame-parameter nil 'fullscreen 'fullboth)
(defun toggle-fullscreen () (interactive)
       (set-frame-parameter nil 'fullscreen (
       if (frame-parameter nil 'fullscreen) nil 'fullboth

       ))
)
(global-set-key [(meta return)] 'toggle-fullscreen)
