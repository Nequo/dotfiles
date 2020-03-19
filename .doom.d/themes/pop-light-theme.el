;;; pop-light-theme.el
(require 'doom-themes)

(defgroup pop-light-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme pop-light
  "A light theme inspired by Nord light"

  ;; name        default   256       16
  ((bg         '("#E5E5E5" nil       nil            ))
   (bg-alt     '("#F5F5F5" nil       nil            ))
   (base0      '("#fafafa" "#efefef" "white"        ))
   (base1      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
   (base2      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
   (base3      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
   (base4      '("#8c8c84" "#9ca0a4" "brightblack"  ))
   (base5      '("#484a42" "#424242" "brightblack"  ))
   (base6      '("#434343" "#2e2e2e" "brightblack"  ))
   (base7      '("#2c2f34" "#1e1e1e" "brightblack"  ))
   (base8      '("#1b2229" "black"   "black"        ))
   (fg         '("#574F4A" "#424242" "black"        ))
   (fg-alt     '("#c6c7c7" "#c7c7c7" "brightblack"  ))

   (grey       '("#888888" "#a0a1a7" "brightblack"  ))
   (red        '("#db3400" "#e45649" "red"          ))
   (orange     '("#be7704" "#dd8844" "brightred"    ))
   (green      '("#01967a" "#50a14f" "green"        ))
   (teal       '("#48B9C7" "#44b9b1" "brightgreen"  ))
   (yellow     '("#cc9e2b" "#c5a332" "yellow"       ))
   (blue       '("#8D9DF7" "#4078f2" "brightblue"   ))
   (dark-blue '("#505FB5" "#2257A0" "blue"))
   (light-blue '("#a0bcf8" "#a0bcf8" "brightblue"   ))
   (magenta    '("#D93F73" "#a626a4" "magenta"      ))
   (violet     '("#9c27b0" "#823ff1" "brightmagenta"))
   (cyan       '("#39939E" "#0184bc" "brightcyan"   ))
   (dark-cyan '("#2C8691" "#5699AF" "cyan"))

   (highlight      orange)
   (vertical-bar   (doom-darken base2 0.1))
   (selection (doom-blend blue bg 0.5))
   (builtin        violet)
   (comments       grey)
   (doc-comments   (doom-darken comments 0.15))
   (constants      magenta)
   (functions      green)
   (keywords       dark-blue)
   (methods        cyan)
   (operators      blue)
   (type           orange)
   (strings        magenta)
   (variables      fg)
   (numbers        magenta)
   (region         base3)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend magenta base4 0.2))

   (modeline-bg base1)
   (modeline-bg-l base2)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ((font-lock-comment-face
    :foreground comments
    :weight 'bold)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments
    :weight 'regular)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground base8)
   ((paren-face-match &override) :foreground red :background base3 :weight 'ultra-bold)

   (doom-modeline-bar :background highlight)
   (doom-modeline-project-dir :foreground magenta :weight 'bold)
   (doom-modeline-buffer-file :weight 'regular)

   (mode-line :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive :background modeline-bg-inactive :foreground modeline-fg-alt)
   (mode-line-emphasis :foreground highlight)

   (magit-blame-heading :foreground orange :background bg-alt)
   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
   (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.2) :bold bold)

   (evil-ex-lazy-highlight :background base3)

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   (markdown-code-face       :background base1)
   (mmm-default-submode-face :background base1)

   ;; (company-tooltip-selection :foreground "#000000" :background base3)
   (company-tooltip-common :foreground green)
   (org-block            :background base1)
   (org-level-1          :foreground base8 :weight 'bold :height 1.4)
   (org-level-2          :foreground base7 :weight 'bold :height 1.3)
   (org-level-3          :foreground base7 :bold bold :height 1.2)
   (org-level-4          :foreground base7 :bold bold :height 1.2)
   (org-ellipsis         :underline nil :background bg-alt     :foreground grey)
   (org-quote            :background base1)
   (org-checkbox-statistics-done :foreground base2 :weight 'normal)
   (org-done nil)
   (org-done :foreground green :weight 'normal)
   (org-headline-done :foreground base6 :weight 'normal :strike-through t)
   (org-date :foreground orange)
   (org-code :foreground dark-blue)
   (org-special-keyword :foreground base8 :underline t)
   (org-document-title :foreground base8 :weight 'bold :height 1.5)
   (org-document-info-keyword :foreground base4 :height 0.95)
   (org-block-begin-line :background base3 )
   (org-meta-line :foreground base4 :height 1.0)
   (org-list-dt :foreground magenta)
   (org-todo-keyword-faces
    '(("TODO" :foreground "#a4779c" :weight normal :underline t)
      ("WAITING" :foreground "#d08770" :weight normal :underline t)
      ("INPROGRESS" :foreground "#658db5" :weight normal :underline t)
      ("DONE" :foreground "#88ac69" :weight normal :underline t)
      ("CANCELLED" :foreground "#bf616a" :weight normal :underline t)))

   (org-priority-faces '((65 :foreground "#bf616a")
                         (66 :foreground "#d08770")
                         (67 :foreground "#67aba9")))

   (helm-candidate-number :background blue :foreground bg)

   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)

   (wgrep-face :background base1)

   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

   (tooltip :background base1 :foreground fg)

   (ivy-posframe :background base0)

   (lsp-ui-doc-background      :background base0)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)


   )

  ;; --- extra variables ---------------------
  ;;()
  )

(after! org
  (setq
   org-ellipsis " ⤵"
   org-todo-keyword-faces
    '(("TODO" :foreground "#a4779c" :weight normal :underline t)
      ("WAITING" :foreground "#d08770" :weight normal :underline t)
      ("INPROGRESS" :foreground "#658db5" :weight normal :underline t)
      ("DONE" :foreground "#88ac69" :weight normal :underline t)
      ("CANCELLED" :foreground "#bf616a" :weight normal :underline t))

   org-priority-faces '((65 :foreground "#bf616a")
                         (66 :foreground "#d08770")
                         (67 :foreground "#67aba9"))))

;;; pop-light-theme.el ends here
