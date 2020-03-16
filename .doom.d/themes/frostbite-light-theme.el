;;; frostbite-light-theme.el
(require 'doom-themes)

(defgroup frostbite-light-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme frostbite-light
  "A light theme inspired by Nord light"

  ;; name        default   256       16
  ((bg         '("#F0F4FC" nil       nil            ))
   (bg-alt     '("#FAFAFE" nil       nil            ))
   (base0      '("#F0F4FC" "black"   "black"))
   (base1      '("#E3EAF5" "#1e1e1e" "brightblack"))
   (base2      '("#D8DEE9" "#2e2e2e" "brightblack"))
   (base3      '("#C2D0E7" "#262626" "brightblack"))
   (base4      '("#B8C5DB" "#3f3f3f" "brightblack"))
   (base5      '("#AEBACF" "#525252" "brightblack"))
   (base6      '("#A1ACC0" "#6b6b6b" "brightblack"))
   (base7      '("#60728C" "#979797" "brightblack"))
   (base8      '("#485163" "#dfdfdf" "white"))
   (fg         '("#3B4252" "#2d2d2d" "white"))
   (fg-alt     '("#2E3440" "#bfbfbf" "brightwhite"))

   (grey       '("#a0a1a7" "#a0a1a7" "brightblack"  ))
   (red        '("#bf616a" "#e45649" "red"          ))
   (orange     '("#d08770" "#dd8844" "brightred"    ))
   (green      '("#88ac69" "#50a14f" "green"        ))
   (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow     '("#e2bd72" "#c5a332" "yellow"       ))
   (blue       '("#658db5" "#4078f2" "brightblue"   ))
   (dark-blue '("#5272AF" "#2257A0" "blue"))
   (light-blue '("#a0bcf8" "#a0bcf8" "brightblue"   ))
   (magenta    '("#a4779c" "#a626a4" "magenta"      ))
   (violet     '("#a9a1e1" "#823ff1" "brightmagenta"))
   (cyan       '("#67aba9" "#0184bc" "brightcyan"   ))
   (dark-cyan '("#2C7088" "#5699AF" "cyan"))

   (highlight      blue)
   (vertical-bar   (doom-darken base2 0.1))
   (selection (doom-blend blue bg 0.5))
   (builtin        blue)
   (comments       grey)
   (doc-comments   (doom-darken comments 0.15))
   (constants      magenta)
   (functions      cyan)
   (keywords       dark-blue)
   (methods        cyan)
   (operators      blue)
   (type           orange)
   (strings        green)
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

;;; frostbite-light-theme.el ends here
